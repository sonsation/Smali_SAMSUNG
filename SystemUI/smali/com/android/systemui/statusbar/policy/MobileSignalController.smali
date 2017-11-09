.class public Lcom/android/systemui/statusbar/policy/MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/SignalController;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileSignalController$1;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$2;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$3;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;,
        Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static sCodeToState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LTE_ON_CDMA_FALSE:I

.field private final LTE_ON_CDMA_TRUE:I

.field private final LTE_ON_CDMA_UNKNOWN:I

.field private mActiveSimCount:I

.field private mActivityIconSet:[I

.field private mBootDataSvcAcquired:Z

.field private mBootVoiceSvcAcquired:Z

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mContext:Landroid/content/Context;

.field private mCurSvcSate:I

.field private mCurrentSignalStrength:I

.field private mDataNetType:I

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

.field private final mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mDisabledDataIcon:I

.field private mHandler:Landroid/os/Handler;

.field private mHasMobileData:Z

.field private mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

.field private mInitialNetworkName:Ljava/lang/String;

.field private mIsCmccCard:Z

.field private mIsCtcCard:Z

.field private mIsUKEECard:Z

.field private mLastCB:Ljava/lang/String;

.field private mLastDataSpn:Ljava/lang/String;

.field private mLastEFSPN:I

.field private mLastPlmn:Ljava/lang/String;

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field private mLastSpn:Ljava/lang/String;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobileDataRoamingObserver:Landroid/database/ContentObserver;

.field private final mNWBoosterObserver:Landroid/database/ContentObserver;

.field public mNetworkManuallySelected:[Ljava/lang/String;

.field private mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field final mNetworkToIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSvcSate:I

.field private mRssiTypeIconId:I

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mShouldBlockPLMNInfoUpdate:Z

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSlotId:I

.field private mSubId:I

.field final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private mTargetSignalStrength:I

.field private mTransitionState:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/SignalStrength;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/policy/MobileSignalController;Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;)Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isGsmZVV()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isMobileDataSettingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNetworkRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSignalOneLevelPerSec()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3443
    invoke-static {}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->initializeCodeToState()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->sCodeToState:Ljava/util/HashMap;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p3, "hasMobileData"    # Z
    .param p4, "phone"    # Landroid/telephony/TelephonyManager;
    .param p5, "callbackHandler"    # Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .param p6, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p7, "info"    # Landroid/telephony/SubscriptionInfo;
    .param p8, "defaults"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;
    .param p9, "receiverLooper"    # Landroid/os/Looper;

    .prologue
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MobileSignalController("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p5

    move-object v6, p6

    .line 182
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 87
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 88
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastCB:Ljava/lang/String;

    .line 104
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    .line 107
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_ON_CDMA_UNKNOWN:I

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_ON_CDMA_FALSE:I

    .line 109
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->LTE_ON_CDMA_TRUE:I

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 117
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    .line 119
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 131
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_DEFAULT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 159
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->OTHERS:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    .line 163
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootVoiceSvcAcquired:Z

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mBootDataSvcAcquired:Z

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    .line 1519
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController$1;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 1527
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController$2;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    .line 2617
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNWBoosterObserver:Landroid/database/ContentObserver;

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    .line 190
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 192
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    .line 194
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHasMobileData:Z

    .line 195
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    .line 197
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 198
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 199
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    .line 200
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 203
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDummySubId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dataNetType:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->serviceState:[Landroid/telephony/ServiceState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->signalStrength:[Landroid/telephony/SignalStrength;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MobileSignalController voiceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    const-string/jumbo v3, " dataState="

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    const-string/jumbo v3, " dataNetType = "

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    const-string/jumbo v1, "persist.sys.softsim.status"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const-string/jumbo v3, "default"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "softSimState":Ljava/lang/String;
    const-string/jumbo v1, "activating"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "activated"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 217
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_3

    .line 218
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v2, -0x3

    if-eq v1, v2, :cond_3

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MobileSignalController softSimState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    .line 224
    :cond_3
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move-object/from16 v0, p9

    invoke-direct {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;ILandroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 226
    const v1, 0x7f0f0258

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 228
    const v1, 0x104029b

    .line 227
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 230
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 232
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHANGE_ONE_SIGNAL_LEVEL_PER_SEC:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_LTE_WIDE_BAND:Z

    if-eqz v1, :cond_5

    .line 233
    :cond_4
    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;-><init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    .line 235
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_6
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    .line 237
    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p7 .. p7}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 239
    .local v7, "networkName":Ljava/lang/String;
    :goto_1
    const-string/jumbo v1, ""

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 240
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v2, -0x2

    if-eq v1, v2, :cond_7

    .line 241
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_8

    .line 242
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 245
    :cond_8
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInitialNetworkName:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v1, :cond_11

    .line 250
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MobileSignalController InitialNetworkName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInitialNetworkName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v7, :cond_a

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v1, :cond_12

    .line 260
    :cond_a
    :goto_3
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDICATOR_PLMN:Z

    if-eqz v1, :cond_b

    .line 261
    if-eqz v7, :cond_b

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStatusBarCarrierText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateStatusBarCarrierText(Ljava/lang/String;)V

    .line 266
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 267
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v7, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    iput-boolean p3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v1, :cond_c

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceSim()V

    .line 278
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->emergencyModeActivated:Z

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "smart_bonding"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNWBoosterObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 281
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNWBoosterObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 286
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SHOW_DISABLED_DATA_ICON:Z

    if-eqz v1, :cond_e

    .line 287
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 288
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 287
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 291
    const-string/jumbo v1, "ZVV"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "ZTM"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 292
    :cond_d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 293
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    .line 292
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 173
    :cond_e
    return-void

    .line 235
    .end local v7    # "networkName":Ljava/lang/String;
    :cond_f
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 238
    :cond_10
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .restart local v7    # "networkName":Ljava/lang/String;
    goto/16 :goto_1

    .line 247
    :cond_11
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aput-object v7, v1, v2

    goto/16 :goto_2

    .line 252
    :cond_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v1, :cond_13

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v7, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 255
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private getAreaInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 3518
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 3519
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3521
    .local v0, "areaInfo":Ljava/lang/StringBuilder;
    if-eqz v3, :cond_0

    .line 3522
    :try_start_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3523
    .local v2, "mccMnc":I
    if-lez v2, :cond_0

    .line 3524
    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3531
    .end local v2    # "mccMnc":I
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3527
    :catch_0
    move-exception v1

    .line 3529
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "CarrierLabel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAreaInfo e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final getCTCSignalIconId()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2774
    const/4 v1, 0x0

    .line 2775
    .local v1, "iconLevel":I
    const/4 v0, 0x0

    .line 2776
    .local v0, "evdoIconLevel":I
    const/4 v3, 0x0

    .line 2778
    .local v3, "lteIconLevel":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v5, :cond_0

    .line 2779
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v6, "getCTCSignalIconId - mSignalStrength = null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    const/4 v1, 0x0

    .line 2781
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    .line 2782
    .local v2, "iconList":[I
    aget v5, v2, v1

    return v5

    .line 2785
    .end local v2    # "iconList":[I
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCTCSignalIconId( "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " ) "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegLTE()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "LTE: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 2789
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    .line 2790
    .restart local v2    # "iconList":[I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2791
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegEvdo()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2792
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v5

    sget v6, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    add-int/lit8 v6, v6, 0x1

    mul-int v0, v5, v6

    .line 2793
    if-nez v1, :cond_5

    .line 2794
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    .line 2818
    :cond_1
    :goto_1
    array-length v5, v2

    add-int/lit8 v4, v5, -0x1

    .line 2819
    .local v4, "maxLevel":I
    if-le v1, v4, :cond_c

    .line 2820
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCdmaPhoneSignalIconId: maxLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2821
    const-string/jumbo v7, ", iconLevel = "

    .line 2820
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2821
    const-string/jumbo v7, " is too high"

    .line 2820
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    move v1, v4

    .line 2828
    :cond_2
    :goto_2
    aget v5, v2, v1

    return v5

    .line 2786
    .end local v2    # "iconList":[I
    .end local v4    # "maxLevel":I
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegEvdo()Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Evdo: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2787
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cdma "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v8}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 2796
    .restart local v2    # "iconList":[I
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2797
    :cond_6
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    goto/16 :goto_1

    .line 2799
    :cond_7
    add-int/2addr v1, v0

    .line 2800
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    goto/16 :goto_1

    .line 2803
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegLTE()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2804
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v5

    sget v6, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    add-int/lit8 v6, v6, 0x1

    mul-int v3, v5, v6

    .line 2805
    if-nez v1, :cond_9

    .line 2806
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    goto/16 :goto_1

    .line 2808
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2809
    :cond_a
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    goto/16 :goto_1

    .line 2811
    :cond_b
    add-int/2addr v1, v3

    .line 2812
    invoke-static {v10}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthForCTC(Z)[I

    move-result-object v2

    goto/16 :goto_1

    .line 2823
    .restart local v4    # "maxLevel":I
    :cond_c
    if-gez v1, :cond_2

    .line 2824
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCdmaPhoneSignalIconId: iconLevel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is too small"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method private final getCdmaEriIcon()I
    .locals 10

    .prologue
    const v9, 0x7f020593

    const v8, 0x7f020592

    const/4 v7, 0x1

    const v6, 0x7f020590

    const/4 v5, 0x0

    .line 864
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_7

    .line 865
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 866
    .local v0, "iconIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 867
    .local v1, "iconMode":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " iconMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_FEMTO_CELL:Z

    if-eqz v2, :cond_3

    .line 870
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    if-eqz v2, :cond_0

    .line 871
    return v9

    .line 873
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 887
    :cond_1
    return v6

    .line 875
    :pswitch_0
    return v5

    .line 877
    :pswitch_1
    return v6

    .line 879
    :pswitch_2
    return v8

    .line 881
    :pswitch_3
    if-nez v1, :cond_2

    .line 882
    return v9

    .line 883
    :cond_2
    if-ne v1, v7, :cond_1

    .line 884
    const v2, 0x7f020595

    return v2

    .line 889
    :cond_3
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 890
    :cond_4
    packed-switch v0, :pswitch_data_1

    .line 897
    :pswitch_4
    return v5

    .line 892
    :pswitch_5
    const v2, 0x7f020598

    return v2

    .line 894
    :pswitch_6
    const v2, 0x7f02059a

    return v2

    .line 900
    :cond_5
    if-ne v0, v7, :cond_6

    .line 901
    return v5

    .line 904
    :cond_6
    packed-switch v1, :pswitch_data_2

    .line 910
    return v5

    .line 906
    :pswitch_7
    return v6

    .line 908
    :pswitch_8
    return v8

    .line 914
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_7
    return v5

    .line 873
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 890
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch

    .line 904
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private getCurrentRSSIState()I
    .locals 1

    .prologue
    .line 3003
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3004
    const/4 v0, 0x0

    return v0

    .line 3006
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getDataServiceState()I
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    return v0

    .line 1538
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 1596
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_DEFAULT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    .line 1600
    sget-object v0, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    .line 1602
    .local v0, "mStatusBarIconOpBranding":Ljava/lang/String;
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1603
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroupExt(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_0
    const-string/jumbo v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1608
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateATTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_1
    const-string/jumbo v1, "AIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1610
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateAIOMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_2
    const-string/jumbo v1, "TMB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1613
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTMOMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_4
    const-string/jumbo v1, "MTR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1615
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVZWMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_5
    const-string/jumbo v1, "USC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1617
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateUSCCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_6
    const-string/jumbo v1, "CHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1620
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCMCCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_8
    const-string/jumbo v1, "CHM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "CTC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1622
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCTCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_9
    const-string/jumbo v1, "CHU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1624
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCUMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_a
    const-string/jumbo v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1626
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateKTTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_b
    const-string/jumbo v1, "ZVV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1629
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateZVVMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_d
    const-string/jumbo v1, "ZTM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "LTE4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1631
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateLTE4GMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_e
    const-string/jumbo v1, "PCT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1633
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updatePCTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_f
    const-string/jumbo v1, "JDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1637
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->update4GLTEMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_11
    const-string/jumbo v1, "CDR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "4GLTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1639
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateLTEMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_12
    const-string/jumbo v1, "TFG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1641
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTFGMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_13
    const-string/jumbo v1, "IUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1643
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateIUSMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_14
    const-string/jumbo v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1645
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateORGMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_15
    const-string/jumbo v1, "OYA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1647
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateOYAMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_16
    const-string/jumbo v1, "OYB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1649
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateOYBMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_17
    const-string/jumbo v1, "OYC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1651
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateOYCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_18
    const-string/jumbo v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1653
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVIDMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1606
    :cond_19
    const-string/jumbo v1, "TUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1655
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTURMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1

    .line 1657
    :cond_1a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    return-object v1
.end method

.method private getPureDataTypeIcon()I
    .locals 2

    .prologue
    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "combinedDataTypeIcon":I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 847
    :pswitch_0
    const v0, 0x7f02058e

    .line 850
    :goto_0
    return v0

    .line 834
    :pswitch_1
    const v0, 0x7f02058e

    .line 835
    goto :goto_0

    .line 837
    :pswitch_2
    const v0, 0x7f020597

    .line 838
    goto :goto_0

    .line 841
    :pswitch_3
    const v0, 0x7f020596

    .line 842
    goto :goto_0

    .line 844
    :pswitch_4
    const/4 v0, 0x0

    .line 845
    goto :goto_0

    .line 822
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private getRoamingIcon()I
    .locals 3

    .prologue
    .line 736
    const/4 v0, 0x0

    .line 737
    .local v0, "roamingIcon":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    if-eqz v1, :cond_2

    .line 738
    :cond_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->USE_ONLY_GSM_ROAMING_ICON:Z

    if-eqz v1, :cond_4

    .line 742
    :cond_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSM_ROAMING_ICON:Z

    if-nez v1, :cond_6

    .line 743
    const/4 v0, 0x0

    .line 776
    :cond_2
    :goto_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_3

    .line 777
    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_10

    .line 778
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getPureDataTypeIcon()I

    move-result v0

    .line 790
    :cond_3
    :goto_1
    return v0

    .line 739
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdmaLTE()Z

    move-result v1

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_FEMTO_CELL:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    .line 738
    if-eqz v1, :cond_1

    .line 740
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCdmaEriIcon()I

    move-result v0

    goto :goto_0

    .line 744
    :cond_6
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->USE_ONLY_CDMA_ROAMING_ICON:Z

    if-nez v1, :cond_7

    .line 745
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->USE_ONLY_GSM_ROAMING_ICON:Z

    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdmaVoiceNetwork()Z

    move-result v1

    .line 744
    if-eqz v1, :cond_8

    .line 746
    :cond_7
    const v0, 0x7f020590

    goto :goto_0

    .line 748
    :cond_8
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v1, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 749
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    if-eqz v1, :cond_a

    .line 750
    const v0, 0x7f0205a0

    goto :goto_0

    .line 752
    :cond_a
    const v0, 0x7f020598

    goto :goto_0

    .line 754
    :cond_b
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActiveSimCount:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    if-eqz v1, :cond_d

    .line 755
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    if-eqz v1, :cond_c

    .line 756
    const v0, 0x7f0205a1

    goto :goto_0

    .line 758
    :cond_c
    const v0, 0x7f02059b

    goto :goto_0

    .line 762
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNationalRoaming()Z

    move-result v1

    .line 761
    if-eqz v1, :cond_e

    .line 763
    const/4 v0, 0x0

    goto :goto_0

    .line 765
    :cond_e
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    if-eqz v1, :cond_f

    .line 766
    const v0, 0x7f02059f

    goto/16 :goto_0

    .line 768
    :cond_f
    const v0, 0x7f0205cd

    goto/16 :goto_0

    .line 780
    :cond_10
    const v1, 0x7f020590

    if-ne v0, v1, :cond_11

    .line 781
    const v0, 0x7f02059c

    goto/16 :goto_1

    .line 782
    :cond_11
    const v1, 0x7f020592

    if-ne v0, v1, :cond_12

    .line 783
    const v0, 0x7f02059e

    goto/16 :goto_1

    .line 784
    :cond_12
    const v1, 0x7f0205cd

    if-ne v0, v1, :cond_3

    .line 785
    const v0, 0x7f02059c

    goto/16 :goto_1
.end method

.method private getStatusBarCarrierText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1341
    const-string/jumbo v0, ""

    .line 1342
    .local v0, "statusBarCarrierText":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1343
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1344
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v2, ""

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1346
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x13

    if-le v1, v2, :cond_2

    .line 1347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1352
    :cond_1
    :goto_0
    return-object v0

    .line 1349
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0
.end method

.method private hasDataService()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2688
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    .line 2689
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2693
    return v1

    .line 2691
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2696
    :cond_0
    return v1

    .line 2689
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private hasService()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 671
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_3

    .line 679
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 688
    :pswitch_0
    return v0

    .line 681
    :pswitch_1
    return v1

    .line 683
    :pswitch_2
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_PS_STATE_COMBINED_SIGNAL:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 684
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 686
    :cond_2
    return v1

    .line 702
    :cond_3
    return v1

    .line 679
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static initializeCodeToState()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3447
    .local v0, "codeToState":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3448
    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3449
    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3450
    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3451
    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3452
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3453
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3454
    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3455
    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3456
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3457
    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3458
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RJ"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3459
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3460
    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3461
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3462
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3463
    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3464
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3465
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3466
    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3467
    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MG"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3468
    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3469
    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3470
    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3471
    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3472
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3473
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3474
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3475
    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3476
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3477
    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3478
    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3479
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3480
    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3481
    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "DF"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3482
    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3483
    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "TO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3484
    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "GO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3485
    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3486
    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MT"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3487
    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3488
    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3489
    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RO"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3490
    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3491
    const/16 v1, 0x49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3492
    const/16 v1, 0x4a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3493
    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3494
    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "BA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3495
    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "SE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3496
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3497
    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3498
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PB"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3499
    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3500
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3501
    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3502
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3503
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "CE"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3504
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PI"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3505
    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3506
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3507
    const/16 v1, 0x5d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3508
    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "PA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3509
    const/16 v1, 0x5f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "RR"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3510
    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3511
    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "AM"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3512
    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3513
    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "MA"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3514
    return-object v0
.end method

.method private isCallingState()Z
    .locals 4

    .prologue
    .line 2724
    const/4 v0, 0x0

    .line 2725
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2726
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2727
    :cond_0
    const/4 v0, 0x1

    .line 2729
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCallingState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    return v0
.end method

.method private isCarrierNetworkChangeActive()Z
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    return v0
.end method

.method private isCdma()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 707
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCdmaLTE()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 858
    return v2

    .line 860
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isCdmaVoiceNetwork()Z
    .locals 1

    .prologue
    .line 1584
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1592
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1590
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 1584
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isCmccCard(Ljava/lang/String;)Z
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 2857
    const-string/jumbo v0, "46000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "46002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "46007"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "45412"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2858
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "isCmccCard "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2859
    const/4 v0, 0x1

    return v0

    .line 2861
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isCsRegWCDMA()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2709
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_2

    .line 2710
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 2711
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 2709
    :cond_0
    :goto_0
    return v0

    .line 2712
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 2713
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    .line 2714
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_0

    .line 2715
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2709
    goto :goto_0
.end method

.method private isCtcCard()Z
    .locals 4

    .prologue
    .line 2866
    const-string/jumbo v1, "gsm.sim.cdmaoperator.numeric"

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2867
    .local v0, "cdmaNumeric":Ljava/lang/String;
    const-string/jumbo v1, "46003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "46011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "45502"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "45507"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "46012"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2868
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "isCtcCard "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    const/4 v1, 0x1

    return v1

    .line 2871
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isDataDisabled()Z
    .locals 2

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDummySubId(I)Z
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 3187
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    .line 3188
    const/4 v0, -0x3

    if-ne p1, v0, :cond_1

    .line 3189
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3191
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isFETCard()Z
    .locals 3

    .prologue
    .line 3629
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 3630
    .local v0, "numeric":Ljava/lang/String;
    const-string/jumbo v1, "46601"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3631
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "isFETCard "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    const/4 v1, 0x1

    return v1

    .line 3634
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isGsmZVV()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3601
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isGsmZVV(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-nez v0, :cond_1

    .line 3604
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v0

    .line 3603
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3618
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 3604
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 3615
    :pswitch_1
    return v3

    .line 3603
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isMobileDataSettingEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1512
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNationalRoaming()Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 796
    sget-object v4, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    .line 797
    .local v4, "statusBarIconOpBranding":Ljava/lang/String;
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v3

    .line 798
    .local v3, "simNumeric":Ljava/lang/String;
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "plmnNumeric":Ljava/lang/String;
    const-string/jumbo v5, "VAU"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 801
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 802
    invoke-virtual {v3, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 803
    .local v2, "simMCC":Ljava/lang/String;
    invoke-virtual {v1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "plmnMCC":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 806
    return v7

    .line 808
    .end local v0    # "plmnMCC":Ljava/lang/String;
    .end local v2    # "simMCC":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "XSA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 809
    const-string/jumbo v5, "50503"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 810
    return v7

    .line 812
    :cond_1
    const-string/jumbo v5, "21902"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "21901"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 813
    return v7

    .line 815
    :cond_2
    return v6
.end method

.method private isNetworkAndSimZVV(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 3582
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3583
    .local v1, "sNumericOperator":[Ljava/lang/String;
    const-string/jumbo v2, "gsm.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3585
    .local v0, "nNetworkNumericOperator":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3586
    array-length v2, v1

    if-le v2, p1, :cond_0

    .line 3587
    aget-object v2, v1, p1

    if-eqz v2, :cond_0

    .line 3588
    aget-object v2, v1, p1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isZVVMccMnc(Ljava/lang/String;)Z

    move-result v2

    .line 3585
    if-eqz v2, :cond_0

    .line 3589
    if-eqz v0, :cond_0

    .line 3590
    array-length v2, v0

    if-le v2, p1, :cond_0

    .line 3591
    aget-object v2, v0, p1

    if-eqz v2, :cond_0

    .line 3592
    aget-object v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isZVVMccMnc(Ljava/lang/String;)Z

    move-result v2

    .line 3589
    if-eqz v2, :cond_0

    .line 3593
    const/4 v2, 0x1

    return v2

    .line 3597
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isNetworkRoamingEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1516
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNetworkRoamingForZVV(I)Z
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3553
    const/4 v0, 0x0

    .line 3554
    .local v0, "bRoamingProp":Z
    const-string/jumbo v2, "gsm.operator.isroaming"

    const-string/jumbo v3, "false, false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3555
    .local v1, "sRoaming":[Ljava/lang/String;
    array-length v2, v1

    if-le v2, v5, :cond_1

    .line 3556
    aget-object v2, v1, p1

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3557
    const/4 v0, 0x1

    .line 3564
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 3565
    return v5

    .line 3560
    :cond_1
    aget-object v2, v1, v4

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3561
    const/4 v0, 0x1

    goto :goto_0

    .line 3567
    :cond_2
    return v4
.end method

.method private isPsRegEvdo()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2701
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_2

    .line 2702
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    .line 2703
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 2701
    :cond_0
    :goto_0
    return v0

    .line 2704
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 2705
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2701
    goto :goto_0
.end method

.method private isPsRegLTE()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2719
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 2720
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2719
    :cond_0
    return v0
.end method

.method private isRJIOSimInserted(I)Z
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2893
    invoke-static {p1}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 2894
    .local v2, "simNumeric":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 2895
    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2896
    .local v0, "mcc":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2901
    .end local v0    # "mcc":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "405"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2902
    const-string/jumbo v3, "840"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "854"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "855"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2903
    const-string/jumbo v3, "856"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2903
    const-string/jumbo v3, "857"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2903
    const-string/jumbo v3, "858"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2904
    const-string/jumbo v3, "859"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2904
    const-string/jumbo v3, "860"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2904
    const-string/jumbo v3, "861"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2905
    const-string/jumbo v3, "862"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2905
    const-string/jumbo v3, "863"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2905
    const-string/jumbo v3, "864"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2906
    const-string/jumbo v3, "865"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2906
    const-string/jumbo v3, "866"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2906
    const-string/jumbo v3, "867"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2907
    const-string/jumbo v3, "868"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2907
    const-string/jumbo v3, "869"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2907
    const-string/jumbo v3, "870"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2908
    const-string/jumbo v3, "871"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2908
    const-string/jumbo v3, "872"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2908
    const-string/jumbo v3, "873"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2909
    const-string/jumbo v3, "874"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2909
    const-string/jumbo v3, "87"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2909
    const-string/jumbo v3, "780"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-nez v3, :cond_0

    .line 2910
    const-string/jumbo v3, "78"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2902
    if-eqz v3, :cond_2

    .line 2911
    :cond_0
    return v5

    .line 2898
    :cond_1
    const/4 v0, 0x0

    .line 2899
    .local v0, "mcc":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "mnc":Ljava/lang/String;
    goto/16 :goto_0

    .line 2914
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mnc":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "406"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2915
    const-string/jumbo v3, "977"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "978"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "981"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2916
    const-string/jumbo v3, "994"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2915
    if-nez v3, :cond_3

    .line 2916
    const-string/jumbo v3, "999"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2915
    if-eqz v3, :cond_4

    .line 2917
    :cond_3
    return v5

    .line 2920
    :cond_4
    return v4
.end method

.method private isRoaming()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 715
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_FEMTO_CELL:Z

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    if-eqz v1, :cond_0

    .line 717
    return v2

    .line 720
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 721
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_4

    .line 722
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    .line 723
    .local v0, "iconMode":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 724
    if-eqz v0, :cond_1

    .line 725
    if-ne v0, v2, :cond_2

    move v1, v2

    .line 723
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 724
    goto :goto_0

    :cond_2
    move v1, v3

    .line 725
    goto :goto_0

    :cond_3
    move v1, v3

    .line 723
    goto :goto_0

    .line 727
    .end local v0    # "iconMode":I
    :cond_4
    return v3

    .line 730
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    :cond_6
    return v3
.end method

.method private isUKEECard(Ljava/lang/String;)Z
    .locals 2
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 2849
    const-string/jumbo v0, "23430"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "23433"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "23486"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2850
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "isUKEECard "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    const/4 v0, 0x1

    return v0

    .line 2853
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isZVVMccMnc(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 3572
    const-string/jumbo v0, "72406"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3573
    const-string/jumbo v0, "72410"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3572
    if-nez v0, :cond_0

    .line 3574
    const-string/jumbo v0, "72411"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3572
    if-nez v0, :cond_0

    .line 3575
    const-string/jumbo v0, "72423"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3572
    if-eqz v0, :cond_1

    .line 3576
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3578
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private mapIconSets()V
    .locals 9

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/16 v4, 0xd

    .line 425
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 429
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 431
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v1, :cond_2

    .line 435
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 436
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 435
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 454
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 455
    .local v0, "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    if-eqz v1, :cond_0

    .line 456
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->DISPLAY_LTE_INSTEAD_OF_4G_ICON:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    sget-object v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    if-ne v1, v2, :cond_3

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    return-void

    .line 443
    .end local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 444
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 443
    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 446
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 445
    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 448
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 447
    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 450
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 449
    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 466
    .restart local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    if-eqz v1, :cond_4

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 472
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private setAreaCode(Landroid/telephony/TelephonyManager;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "tm"    # Landroid/telephony/TelephonyManager;
    .param p2, "areaInfo"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3535
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 3536
    .local v2, "location":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v2, :cond_0

    .line 3537
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 3538
    .local v1, "lac":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/16 v4, 0xff

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    const v4, 0xfffe

    if-eq v1, v4, :cond_0

    const v4, 0xffff

    if-eq v1, v4, :cond_0

    .line 3539
    rem-int/lit8 v0, v1, 0x64

    .line 3540
    .local v0, "areaCode":I
    sget-object v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;->sCodeToState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3541
    .local v3, "state":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3542
    const-string/jumbo v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3543
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3544
    const-string/jumbo v4, " "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3545
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3549
    .end local v0    # "areaCode":I
    .end local v1    # "lac":I
    .end local v3    # "state":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "CarrierLabel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAreaCode areaInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    return-void
.end method

.method private setLastNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 0
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;
    .param p6, "efspn"    # I

    .prologue
    .line 930
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    .line 931
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    .line 932
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    .line 933
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    .line 934
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    .line 935
    iput p6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    .line 929
    return-void
.end method

.method private shouldDisplayCTCOpSignalIcon()Z
    .locals 1

    .prologue
    .line 2925
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_AT_CTC_CARD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCtcCard:Z

    if-eqz v0, :cond_0

    .line 2926
    const/4 v0, 0x1

    return v0

    .line 2928
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldHideDataIconForVoWifi()Z
    .locals 1

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isFETCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3623
    const/4 v0, 0x1

    return v0

    .line 3625
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private shouldShowDisabledDataIcon()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 1542
    sget-object v0, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    const-string/jumbo v1, "CHM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1548
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    if-eq v0, v2, :cond_3

    .line 1549
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1550
    return v3

    .line 1542
    :cond_1
    const-string/jumbo v1, "CHU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "CHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ZVV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ZTM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "TGY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1555
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    if-eq v0, v2, :cond_3

    .line 1556
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 1557
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getWifiConnectedState()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1571
    :cond_3
    return v4

    .line 1542
    :cond_4
    const-string/jumbo v1, "BRI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1562
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getDataServiceState()I

    move-result v0

    if-nez v0, :cond_3

    .line 1563
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    if-eq v0, v2, :cond_3

    .line 1564
    return v3

    .line 1558
    :cond_6
    return v3
.end method

.method private update4GLTEMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    .line 2436
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update4GLTEMobileIconGroup(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2439
    .local v1, "sNetworkOperator":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 2440
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    .line 2439
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2448
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2440
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2442
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2439
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateAIOMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 1958
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAIOMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 1982
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1985
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_0
    return-object v0

    .line 1962
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1965
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1973
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1976
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1979
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1960
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateATTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 1920
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateATTMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 1949
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1952
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_0
    return-object v0

    .line 1924
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1927
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1935
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1936
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_ATT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_0

    .line 1939
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1940
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_ATT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_0

    .line 1943
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1946
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_0

    .line 1922
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateCMCCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2143
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCMCCMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 2146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2145
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2171
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2175
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2176
    const-string/jumbo v1, "3G"

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "4G"

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2175
    if-eqz v1, :cond_1

    .line 2177
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2180
    :cond_1
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 2182
    return-object v0

    .line 2146
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2150
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCmccCard:Z

    if-eqz v1, :cond_3

    .line 2151
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2153
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2157
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCmccCard:Z

    if-eqz v1, :cond_4

    .line 2158
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2160
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2164
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2165
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2167
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2145
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateCTCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2188
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCTCMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2191
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2190
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2205
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2208
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2191
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2196
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2202
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateCTCRssiTypeIcon()V
    .locals 6

    .prologue
    const v5, 0x7f0206c6

    const v4, 0x7f0206c4

    const v3, 0x7f0206c3

    const/4 v2, 0x0

    .line 2734
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 2737
    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    .line 2769
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRssiTypeIconCTC : mRssiTypeIconId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    return-void

    .line 2735
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2736
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2739
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasDataService()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2740
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegEvdo()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCsRegWCDMA()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2741
    :cond_5
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto :goto_0

    .line 2742
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegLTE()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2743
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto :goto_0

    .line 2745
    :cond_7
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto :goto_0

    .line 2748
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegEvdo()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2754
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isPsRegLTE()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2755
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    if-lez v0, :cond_d

    .line 2756
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCallingState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2757
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0

    .line 2749
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    if-lez v0, :cond_b

    .line 2750
    const v0, 0x7f0206c5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0

    .line 2752
    :cond_b
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0

    .line 2759
    :cond_c
    const v0, 0x7f0206c7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0

    .line 2762
    :cond_d
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0

    .line 2765
    :cond_e
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    goto/16 :goto_0
.end method

.method private updateCUMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2214
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCUMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2217
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2216
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2226
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 2228
    return-object v0

    .line 2217
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2219
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2216
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateDataSim()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1116
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v0

    .line 1117
    .local v0, "defaultDataSub":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 1115
    :goto_1
    return-void

    .line 1118
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1127
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    goto :goto_1
.end method

.method private updateIUSMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    .line 2516
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIUSMobileIconGroup(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2517
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2519
    .local v1, "sNetworkOperator":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 2520
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    .line 2519
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2534
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2537
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2520
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2522
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2525
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2531
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2519
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateKTTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2234
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateKTTMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2236
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2262
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2266
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2237
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2239
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2251
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2254
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ril.lte_wideband"

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2255
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2256
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS_KT:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_1

    .line 2258
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateLTE4GMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    .line 2543
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLTE4GMobileIconGroup(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2546
    .local v1, "sNetworkOperator":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 2547
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    .line 2546
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2561
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2564
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2547
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2549
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2552
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ril.lte_wideband"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2553
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "LTE_WIDE_BAND!@!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2555
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_1

    .line 2557
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2546
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLTEMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    .line 2454
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateLTEMobileIconGroup(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2457
    .local v1, "sNetworkOperator":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 2458
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    .line 2457
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2469
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2472
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2458
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2460
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    if-nez v2, :cond_1

    const-string/jumbo v2, "1"

    const-string/jumbo v3, "ril.lte_wideband"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2461
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "LTE_WIDE_BAND!@!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2463
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_1

    .line 2465
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2457
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 3

    .prologue
    .line 1664
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 1665
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 1664
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1719
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1723
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SHOW_DISABLED_DATA_ICON:Z

    if-eqz v1, :cond_0

    .line 1724
    iget v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 1726
    :cond_0
    return-object v0

    .line 1665
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 1667
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1670
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1674
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1679
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_4
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SHOW_HSDPA_DATA_ICON:Z

    if-eqz v1, :cond_2

    .line 1680
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1682
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1685
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_5
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SHOW_HSDPA_DATA_ICON:Z

    if-eqz v1, :cond_3

    .line 1686
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1688
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1692
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1698
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1701
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_8
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->DISPLAY_LTE_INSTEAD_OF_4G_ICON:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    sget-object v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    if-ne v1, v2, :cond_5

    .line 1702
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1703
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_5
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->DISPLAY_4G_PLUS_INSTEAD_OF_4G_ICON:Z

    if-eqz v1, :cond_6

    .line 1704
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1706
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1709
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1712
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_a
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    sget-object v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->AIRTEL:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    if-ne v1, v2, :cond_7

    .line 1713
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1715
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private updateMobileIconGroupExt(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 9
    .param p1, "iconRules"    # Ljava/lang/String;

    .prologue
    .line 1733
    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1734
    .local v5, "mobileIconsListSplit":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1736
    .local v2, "iconsList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_2a

    .line 1737
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1738
    .local v3, "mobileIcon":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    const/4 v0, 0x1

    .line 1739
    .local v0, "foundIt":Z
    add-int/lit8 v7, v1, 0x1

    aget-object v7, v5, v7

    const-string/jumbo v8, "4G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1742
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1843
    :goto_1
    if-eqz v0, :cond_1

    .line 1844
    aget-object v7, v5, v1

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1736
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1739
    :cond_2
    const-string/jumbo v8, "FOUR_G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "4GLTE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1748
    :cond_3
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_1

    .line 1739
    :cond_4
    const-string/jumbo v8, "FOUR_G_LTE_LTN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "4G_LTE_LTN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "4G_LTE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "FOUR_G_ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1752
    :cond_5
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_1

    .line 1739
    :cond_6
    const-string/jumbo v8, "4G_ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "FOUR_G_VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1756
    :cond_7
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_1

    .line 1739
    :cond_8
    const-string/jumbo v8, "4G_VZW"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, "FOUR_G_USCC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1760
    :cond_9
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_1

    .line 1739
    :cond_a
    const-string/jumbo v8, "4G_USCC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string/jumbo v8, "FOUR_G_CU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1764
    :cond_b
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_CU:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_c
    const-string/jumbo v8, "4G_CU"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "4GPLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1770
    :cond_d
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_e
    const-string/jumbo v8, "4G_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "FOUR_G_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "4G+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    const-string/jumbo v8, "FOUR_G_TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1773
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_f
    const-string/jumbo v8, "H_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1776
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_10
    const-string/jumbo v8, "E"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1780
    :cond_11
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_12
    const-string/jumbo v8, "EDGE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    const-string/jumbo v8, "G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 1784
    :cond_13
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_14
    const-string/jumbo v8, "GPRS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string/jumbo v8, "3G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 1789
    :cond_15
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_16
    const-string/jumbo v8, "THREE_G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string/jumbo v8, "UMTS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string/jumbo v8, "THREE_G_TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 1793
    :cond_17
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_18
    const-string/jumbo v8, "3G_TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string/jumbo v8, "THREE_G_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 1799
    :cond_19
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_1a
    const-string/jumbo v8, "3G_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string/jumbo v8, "3GPLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string/jumbo v8, "3G+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string/jumbo v8, "THREE_G_KT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1803
    :cond_1b
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_KT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_1c
    const-string/jumbo v8, "3G_KT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    const-string/jumbo v8, "TWO_G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 1807
    :cond_1d
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TWO_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_1e
    const-string/jumbo v8, "2G"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    const-string/jumbo v8, "1xRTT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 1811
    :cond_1f
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_20
    const-string/jumbo v8, "ONE_X"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    const-string/jumbo v8, "DC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 1814
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_21
    const-string/jumbo v8, "ROAMING"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1817
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_22
    const-string/jumbo v8, "LTE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    .line 1820
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_23
    const-string/jumbo v8, "LTE_PLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_25

    .line 1825
    :cond_24
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_25
    const-string/jumbo v8, "LTEPLUS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string/jumbo v8, "LTE+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_24

    const-string/jumbo v8, "LTE_ATT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 1828
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_ATT:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_26
    const-string/jumbo v8, "LTE_TMO"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1831
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_27
    const-string/jumbo v8, "WFC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 1834
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->WFC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1739
    :cond_28
    const-string/jumbo v8, "UNKNOWN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    .line 1837
    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_1

    .line 1840
    :cond_29
    const/4 v0, 0x0

    .line 1841
    goto/16 :goto_1

    .line 1848
    .end local v0    # "foundIt":Z
    .end local v3    # "mobileIcon":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2a
    const-string/jumbo v6, "none"

    .line 1849
    .local v6, "networkTypeKey":Ljava/lang/String;
    iget v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0x12

    if-ne v7, v8, :cond_2b

    .line 1850
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v7

    .line 1849
    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 1906
    :pswitch_0
    const-string/jumbo v6, "default"

    .line 1909
    :goto_3
    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 1910
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 1914
    .local v4, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_4
    return-object v4

    .line 1850
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2b
    iget v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_2

    .line 1852
    :pswitch_1
    const-string/jumbo v6, "UNKNOWN"

    goto :goto_3

    .line 1855
    :pswitch_2
    const-string/jumbo v6, "LTE"

    goto :goto_3

    .line 1858
    :pswitch_3
    const-string/jumbo v6, "HSPAP"

    goto :goto_3

    .line 1861
    :pswitch_4
    const-string/jumbo v6, "HSPA"

    goto :goto_3

    .line 1864
    :pswitch_5
    const-string/jumbo v6, "HSDPA"

    goto :goto_3

    .line 1867
    :pswitch_6
    const-string/jumbo v6, "HSUPA"

    goto :goto_3

    .line 1870
    :pswitch_7
    const-string/jumbo v6, "EDGE"

    goto :goto_3

    .line 1873
    :pswitch_8
    const-string/jumbo v6, "GPRS"

    goto :goto_3

    .line 1876
    :pswitch_9
    const-string/jumbo v6, "UMTS"

    goto :goto_3

    .line 1879
    :pswitch_a
    const-string/jumbo v6, "1xRTT"

    goto :goto_3

    .line 1882
    :pswitch_b
    const-string/jumbo v6, "CDMA"

    goto :goto_3

    .line 1885
    :pswitch_c
    const-string/jumbo v6, "EVDO_0"

    goto :goto_3

    .line 1888
    :pswitch_d
    const-string/jumbo v6, "EVDO_A"

    goto :goto_3

    .line 1891
    :pswitch_e
    const-string/jumbo v6, "EVDO_B"

    goto :goto_3

    .line 1894
    :pswitch_f
    const-string/jumbo v6, "EHRPD"

    goto :goto_3

    .line 1897
    :pswitch_10
    const-string/jumbo v6, "IDEN"

    goto :goto_3

    .line 1900
    :pswitch_11
    const-string/jumbo v6, "TD_SCDMA"

    goto :goto_3

    .line 1903
    :pswitch_12
    const-string/jumbo v6, "DC"

    goto :goto_3

    .line 1912
    :cond_2c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v4

    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_4

    .line 1849
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_10
        :pswitch_e
        :pswitch_2
        :pswitch_f
        :pswitch_3
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method private updateNetworkNameLatinCB(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V
    .locals 6
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;
    .param p6, "efspn"    # I
    .param p7, "showCB"    # Z
    .param p8, "CBmsg"    # Ljava/lang/String;

    .prologue
    .line 1247
    const-string/jumbo v3, "CarrierLabel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNetworkNameLatinCB showSpn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1248
    const-string/jumbo v5, " spn="

    .line 1247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1248
    const-string/jumbo v5, " dataSpn="

    .line 1247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1249
    const-string/jumbo v5, " showPlmn="

    .line 1247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1249
    const-string/jumbo v5, " plmn="

    .line 1247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1249
    const-string/jumbo v5, " efspn="

    .line 1247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1249
    const-string/jumbo v5, " showCB="

    .line 1247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1249
    const-string/jumbo v5, " CBmsg="

    .line 1247
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1251
    .local v1, "str":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1252
    .local v2, "strData":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1253
    .local v0, "somethingPlmn":Z
    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 1254
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    const/4 v0, 0x1

    .line 1258
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1259
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1260
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    :cond_1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    const/4 v0, 0x1

    .line 1266
    :cond_2
    if-eqz p7, :cond_4

    if-eqz p8, :cond_4

    .line 1267
    if-eqz v0, :cond_3

    .line 1268
    const-string/jumbo v3, " / "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    :cond_3
    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    const/4 v0, 0x1

    .line 1273
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_8

    .line 1274
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1279
    :goto_0
    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    .line 1280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 1281
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    :cond_6
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_9

    .line 1286
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1246
    :goto_1
    return-void

    .line 1276
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 1288
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateNetworkNameLatinLAC(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;
    .param p6, "efspn"    # I

    .prologue
    .line 1213
    const-string/jumbo v2, "CarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNetworkNameLatinLAC showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1214
    const-string/jumbo v4, " spn="

    .line 1213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1214
    const-string/jumbo v4, " dataSpn="

    .line 1213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1215
    const-string/jumbo v4, " showPlmn="

    .line 1213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1215
    const-string/jumbo v4, " plmn="

    .line 1213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1215
    const-string/jumbo v4, ""

    .line 1213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1216
    const-string/jumbo v4, " getAreaInfo="

    .line 1213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1216
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAreaInfo()Ljava/lang/String;

    move-result-object v4

    .line 1213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1216
    const-string/jumbo v4, " efspn="

    .line 1213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1216
    const-string/jumbo v4, " mNetworkManuallySelected="

    .line 1213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1216
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    .line 1213
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    if-nez p5, :cond_1

    const-string/jumbo v1, ""

    .line 1220
    .local v1, "carrierText":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v2, :cond_2

    .line 1221
    const-string/jumbo v1, ""

    .line 1243
    :cond_0
    :goto_1
    return-object v1

    .line 1218
    .end local v1    # "carrierText":Ljava/lang/String;
    :cond_1
    move-object v1, p5

    .restart local v1    # "carrierText":Ljava/lang/String;
    goto :goto_0

    .line 1222
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    const v3, 0x10402b3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1223
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1226
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNetworkRoamingForZVV(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1232
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNetworkAndSimZVV(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getAreaInfo()Ljava/lang/String;

    move-result-object v0

    .line 1234
    .local v0, "areaCode":Ljava/lang/String;
    :goto_2
    if-eqz p6, :cond_6

    const/16 v2, 0x10

    if-ne p6, v2, :cond_a

    .line 1235
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1227
    .end local v0    # "areaCode":Ljava/lang/String;
    :cond_7
    move-object v1, p5

    .line 1228
    if-eqz p6, :cond_8

    const/4 v2, 0x1

    if-ne p6, v2, :cond_0

    .line 1229
    :cond_8
    if-eqz p2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1233
    :cond_9
    const-string/jumbo v0, ""

    .restart local v0    # "areaCode":Ljava/lang/String;
    goto :goto_2

    .line 1236
    :cond_a
    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    if-eqz p5, :cond_c

    invoke-virtual {p5, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1239
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1237
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private updateORGMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2272
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateORGMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2275
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2274
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2282
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2286
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2275
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2279
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2274
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateOYAMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2292
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOYAMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2294
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2295
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2294
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 2311
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2315
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2295
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2297
    :sswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2304
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2305
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2307
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2294
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method private updateOYBMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2322
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOYBMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2324
    :goto_0
    sparse-switch v1, :sswitch_data_0

    .line 2337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2341
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2325
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2327
    :sswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2334
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :sswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2324
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xf -> :sswitch_1
    .end sparse-switch
.end method

.method private updateOYCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2348
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOYCMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 2351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2350
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2361
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2365
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2351
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2356
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2357
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2350
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updatePCTMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    .line 2415
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePCTMobileIconGroup(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2418
    .local v1, "sNetworkOperator":Ljava/lang/String;
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 2419
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v2

    .line 2418
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2427
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2430
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2419
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2421
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2424
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_LTE_LTN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2418
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSignalOneLevelPerSec()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    const/16 v5, 0x46

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2953
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    .line 2954
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentRSSIState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    .line 2955
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE_STRENGTH mPreSvcSate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCurSvcSate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    if-nez v0, :cond_2

    .line 2958
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 2959
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    .line 2961
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    if-eq v0, v1, :cond_1

    .line 2962
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2963
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 2952
    :cond_0
    :goto_0
    return-void

    .line 2965
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    goto :goto_0

    .line 2967
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPreSvcSate:I

    if-ne v0, v4, :cond_0

    .line 2968
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    if-nez v0, :cond_7

    .line 2969
    iput v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 2970
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v0, :cond_4

    .line 2971
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE_STRENGTH(NO_SVC) no diff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2973
    return-void

    .line 2975
    :cond_4
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    .line 2976
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 2977
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE_STRENGTH(NO_SVC) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-ge v0, v1, :cond_9

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    sget v1, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    if-ge v0, v1, :cond_9

    .line 2993
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    .line 2997
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    .line 2998
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2980
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 2981
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE_STRENGTH : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-ne v0, v1, :cond_8

    .line 2984
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "UPDATE_STRENGTH(IN_SVC) no diff :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    .line 2986
    return-void

    .line 2987
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    if-nez v0, :cond_5

    .line 2988
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    goto/16 :goto_1

    .line 2994
    :cond_9
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    if-lez v0, :cond_6

    .line 2995
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    goto/16 :goto_2
.end method

.method private updateTFGMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 2476
    const/4 v0, 0x0

    .line 2478
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTFGMobileIconGroup(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 2481
    .local v2, "sNetworkOperator":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_1

    .line 2482
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2483
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    return-object v0

    .line 2486
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    .line 2487
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v3

    .line 2486
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 2507
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2510
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2487
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2489
    :pswitch_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2490
    .local v1, "networkSubstring":Ljava/lang/String;
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 2491
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NetworkSubstring:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :cond_3
    const-string/jumbo v3, "334"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2494
    const-string/jumbo v3, "716"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2493
    if-nez v3, :cond_4

    .line 2495
    const-string/jumbo v3, "734"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2493
    if-nez v3, :cond_4

    .line 2496
    const-string/jumbo v3, "704"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2493
    if-nez v3, :cond_4

    .line 2497
    const-string/jumbo v3, "706"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2493
    if-nez v3, :cond_4

    .line 2498
    const-string/jumbo v3, "748"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2493
    if-nez v3, :cond_4

    .line 2499
    const-string/jumbo v3, "740"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2493
    if-nez v3, :cond_4

    .line 2500
    const-string/jumbo v3, "714"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2493
    if-eqz v3, :cond_5

    .line 2501
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2503
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2486
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateTMOMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 1991
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTMOMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 1994
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 1993
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2028
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2031
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 1994
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 1996
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1999
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2007
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2008
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 2009
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2015
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_TMO:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_1

    .line 2011
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_2

    .line 2013
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_2

    .line 2018
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2019
    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_TMO:[I

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_1

    .line 2022
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2025
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G_TMO:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 1993
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateTURMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2602
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTURMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2604
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2603
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2609
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2612
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2604
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2606
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_HALF_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2603
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private final updateTelephony()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1362
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1364
    const-string/jumbo v4, " ss="

    .line 1363
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1364
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1363
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->hasService()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_c

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    .line 1367
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_3

    .line 1368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    .line 1368
    if-eqz v0, :cond_d

    .line 1370
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 1375
    :goto_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1376
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->evdoLevel:I

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->lteLevel:I

    .line 1381
    :cond_3
    sget v1, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    if-ge v1, v0, :cond_e

    .line 1382
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget v1, Lcom/android/systemui/SystemUIRune;->MAX_SIGNAL_LEVEL:I

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    .line 1389
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_f

    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCarrierNetworkChangeActive()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->CARRIER_NETWORK_CHANGE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1411
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eq v1, v0, :cond_6

    .line 1412
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 1417
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isRoaming:Z

    .line 1419
    if-eqz v0, :cond_7

    .line 1420
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_7

    .line 1421
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconIndex:I

    .line 1422
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->cdmaEriIconMode:I

    .line 1425
    :cond_7
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_FEMTO_CELL:Z

    if-eqz v0, :cond_11

    .line 1426
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getFemtocellIndicator()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 1427
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    .line 1433
    :goto_5
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_LTE_WIDE_BAND:Z

    if-eqz v0, :cond_a

    .line 1434
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "ril.lte_wideband"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1435
    :cond_8
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    .line 1436
    const-string/jumbo v1, "4G"

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->DISPLAY_LTE_INSTEAD_OF_4G_ICON:Z

    if-eqz v0, :cond_12

    .line 1438
    :cond_9
    const-string/jumbo v1, "LTE"

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    if-ne v0, v1, :cond_13

    .line 1453
    :cond_a
    :goto_6
    const-string/jumbo v0, ""

    sget-object v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->sendOperatorLogoUpdateIntent()V

    .line 1457
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 1361
    return-void

    :cond_c
    move v1, v3

    .line 1366
    goto/16 :goto_0

    .line 1372
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    goto/16 :goto_1

    .line 1383
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    if-gez v0, :cond_4

    .line 1384
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    goto/16 :goto_2

    :cond_f
    move v1, v3

    .line 1390
    goto/16 :goto_3

    .line 1403
    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1406
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isDataDisabled()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_4

    .line 1429
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isLTEFemtoCell:Z

    goto/16 :goto_5

    .line 1437
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    goto :goto_6

    .line 1439
    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    .line 1440
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_ACTIVITY_LTE_PLUS:[I

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    goto :goto_6
.end method

.method private updateUSCCMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 4

    .prologue
    .line 2125
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateUSCCMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2127
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2137
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2128
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2130
    :pswitch_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_USCC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2127
    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private updateVIDMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 6

    .prologue
    .line 2570
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateVIDMobileIconGroup(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 2572
    .local v1, "sNetworkOperator":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2573
    .local v2, "use4Gicon":Z
    const-string/jumbo v3, "302500"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "302320"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "302510"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2574
    const-string/jumbo v3, "302270"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2573
    if-nez v3, :cond_0

    .line 2574
    const-string/jumbo v3, "302490"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2573
    if-eqz v3, :cond_1

    .line 2575
    :cond_0
    const/4 v2, 0x1

    .line 2577
    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    .line 2578
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v3

    .line 2577
    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 2591
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2595
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :goto_1
    return-object v0

    .line 2578
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2584
    :sswitch_0
    if-eqz v2, :cond_3

    .line 2585
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2587
    .end local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .restart local v0    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    goto :goto_1

    .line 2577
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method private updateVZWMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 11

    .prologue
    const v7, 0x7f0205a8

    const v6, 0x7f0205a4

    const/4 v10, 0x0

    .line 2037
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateVZWMobileIconGroup(): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    const-string/jumbo v5, "ril.cdma.ine911"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2040
    .local v3, "ine911":Z
    const-string/jumbo v5, "ril.cdma.inecmmode"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 2041
    .local v2, "emergencyCallbackMode":Z
    const/4 v1, 0x0

    .line 2042
    .local v1, "dataType":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    .line 2044
    .local v0, "callStateByPhone":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    .line 2045
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const-string/jumbo v8, "volte"

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2053
    :cond_0
    :goto_1
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0x12

    if-ne v5, v8, :cond_6

    .line 2055
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2060
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 2109
    :pswitch_0
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2110
    .local v4, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_f

    .line 2111
    const v5, 0x7f0205b0

    .line 2110
    :goto_3
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 2115
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "callState:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->callState:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ", callStateByPhone:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " voLTECall:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2116
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    const-string/jumbo v8, "volte"

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->hasCall(Ljava/lang/String;)Z

    move-result v7

    .line 2115
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2116
    const-string/jumbo v7, " voiceNetTpe:"

    .line 2115
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v7

    .line 2115
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2116
    const-string/jumbo v7, " dataNetType:"

    .line 2115
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2116
    iget v7, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 2115
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2117
    const-string/jumbo v7, ", ine911:"

    .line 2115
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2117
    const-string/jumbo v7, ", emergencyCallbackMode:"

    .line 2115
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2119
    return-object v4

    .line 2042
    .end local v0    # "callStateByPhone":Z
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "callStateByPhone":Z
    goto/16 :goto_0

    .line 2046
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-nez v5, :cond_4

    .line 2047
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-nez v5, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdmaVoiceNetwork()Z

    move-result v5

    .line 2044
    if-eqz v5, :cond_0

    .line 2048
    :cond_4
    const-string/jumbo v5, "ro.ril.svlte1x"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0xd

    if-eq v5, v8, :cond_0

    .line 2049
    :cond_5
    const-string/jumbo v5, "ro.ril.svdo"

    invoke-static {v5, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/4 v8, 0x5

    if-eq v5, v8, :cond_0

    .line 2050
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/4 v8, 0x6

    if-eq v5, v8, :cond_0

    .line 2051
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0xc

    if-eq v5, v8, :cond_0

    .line 2052
    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v8, 0xe

    if-ne v5, v8, :cond_1

    goto/16 :goto_1

    .line 2054
    :cond_6
    if-eqz v2, :cond_7

    iget v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-nez v5, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCdmaVoiceNetwork()Z

    move-result v5

    .line 2044
    if-nez v5, :cond_1

    .line 2057
    :cond_7
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto/16 :goto_2

    .line 2062
    :pswitch_1
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2063
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iput v10, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2066
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_2
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2067
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_8

    .line 2068
    const v5, 0x7f0205ae

    .line 2067
    :goto_5
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2068
    :cond_8
    const v5, 0x7f0205aa

    goto :goto_5

    .line 2072
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_3
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2073
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_9

    move v5, v6

    :goto_6
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    :cond_9
    move v5, v7

    .line 2074
    goto :goto_6

    .line 2079
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_4
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2080
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_a

    .line 2081
    const v5, 0x7f0205b1

    .line 2080
    :goto_7
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2081
    :cond_a
    const v5, 0x7f0205ac

    goto :goto_7

    .line 2084
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_5
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2085
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_b

    .line 2086
    const v5, 0x7f0205b2

    .line 2085
    :goto_8
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2086
    :cond_b
    const v5, 0x7f0205ad

    goto :goto_8

    .line 2090
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_6
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2091
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_c

    .line 2092
    const v5, 0x7f0205a3

    .line 2091
    :goto_9
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2092
    :cond_c
    const v5, 0x7f0205a7

    goto :goto_9

    .line 2098
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_7
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2099
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_d

    :goto_a
    iput v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    :cond_d
    move v6, v7

    .line 2100
    goto :goto_a

    .line 2103
    .end local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    :pswitch_8
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_VZW:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 2104
    .restart local v4    # "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v5, :cond_e

    .line 2105
    const v5, 0x7f0205a6

    .line 2104
    :goto_b
    iput v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto/16 :goto_4

    .line 2105
    :cond_e
    const v5, 0x7f0205a9

    goto :goto_b

    .line 2111
    :cond_f
    const v5, 0x7f0205ab

    goto/16 :goto_3

    .line 2060
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateVoiceSim()V
    .locals 4

    .prologue
    .line 1109
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultVoicePhoneId()I

    move-result v0

    .line 1110
    .local v0, "defaultVoicePhoneId":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVoiceSim: defaultVoicePhoneId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    .line 1108
    return-void

    .line 1111
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateZVVMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 5

    .prologue
    const v4, 0x7f0205a4

    .line 2372
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateZVVMobileIconGroup(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateMobileIconGroup()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object v0

    .line 2376
    .local v0, "mobileIconGroup":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    const/16 v2, 0x12

    if-ne v1, v2, :cond_0

    .line 2377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoiceNetworkType()I

    move-result v1

    .line 2376
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 2405
    :pswitch_0
    const v1, 0x7f0205b0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 2409
    :goto_1
    return-object v0

    .line 2377
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    goto :goto_0

    .line 2379
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2382
    :pswitch_2
    const v1, 0x7f0205ae

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2385
    :pswitch_3
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2390
    :pswitch_4
    const v1, 0x7f0205b1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2393
    :pswitch_5
    const v1, 0x7f0205b2

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2399
    :pswitch_6
    iput v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2402
    :pswitch_7
    const v1, 0x7f0205a5

    iput v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    goto :goto_1

    .line 2376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
    .locals 1

    .prologue
    .line 596
    new-instance v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/SignalController$State;
    .locals 1

    .prologue
    .line 595
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 3012
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 3013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mDataNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  signalIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  roamingIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getRoamingIcon()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mNetworkNameDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3023
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3024
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mRssiTypeIconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3027
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mInitialNetworkName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mInitialNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    return-void
.end method

.method getActivityIcon()I
    .locals 3

    .prologue
    .line 1475
    const/4 v0, 0x0

    .line 1476
    .local v0, "activityIcon":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_0

    .line 1477
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    if-eqz v1, :cond_6

    .line 1478
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    const/4 v2, 0x3

    aget v0, v1, v2

    .line 1488
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SHOW_DISABLED_DATA_ICON:Z

    if-eqz v1, :cond_4

    .line 1489
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldShowDisabledDataIcon()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1490
    const-string/jumbo v1, "ZVV"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ZTM"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1491
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isMobileDataSettingEnabled:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRoaming()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isNetworkRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1492
    :cond_3
    const/4 v0, 0x0

    .line 1502
    :cond_4
    :goto_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v1, :cond_5

    .line 1503
    const/4 v0, 0x0

    .line 1506
    :cond_5
    return v0

    .line 1479
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    if-eqz v1, :cond_7

    .line 1480
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    const/4 v2, 0x1

    aget v0, v1, v2

    goto :goto_0

    .line 1481
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    if-eqz v1, :cond_8

    .line 1482
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    const/4 v2, 0x2

    aget v0, v1, v2

    goto :goto_0

    .line 1484
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActivityIconSet:[I

    const/4 v2, 0x0

    aget v0, v1, v2

    goto :goto_0

    .line 1494
    :cond_9
    const v0, 0x7f0205af

    goto :goto_1

    .line 1497
    :cond_a
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCurrentIconId()I
    .locals 4

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 602
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHANGE_ONE_SIGNAL_LEVEL_PER_SEC:Z

    if-eqz v0, :cond_1

    .line 603
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurSvcSate:I

    if-nez v0, :cond_4

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTargetSignalStrength:I

    .line 610
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_d

    .line 611
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActiveSimCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    if-eqz v0, :cond_2

    .line 612
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 619
    :cond_2
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 620
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCTCRssiTypeIcon()V

    .line 621
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCTCSignalIconId()I

    move-result v0

    return v0

    .line 606
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSignalOneLevelPerSec()V

    goto :goto_0

    .line 613
    :cond_5
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_HIDE_SIGNAL_LEVEL_AT_WFC_STATE:Z

    if-eqz v0, :cond_6

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    .line 613
    if-eqz v0, :cond_6

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 613
    if-eqz v0, :cond_6

    .line 615
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthFocused()[[I

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 617
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthFocused()[[I

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v1, v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    aget v0, v1, v0

    return v0

    .line 624
    :cond_7
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHANGE_ONE_SIGNAL_LEVEL_PER_SEC:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    if-eqz v0, :cond_9

    .line 625
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    if-gez v0, :cond_8

    .line 626
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 628
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    aget v0, v0, v1

    return v0

    .line 632
    :cond_9
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_SIGNAL_LEVE_ZERO_IN_NO_SVC_AT_TMOWFC:Z

    if-eqz v0, :cond_b

    .line 633
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceRegState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceRegState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 634
    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-ne v0, v3, :cond_b

    .line 635
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 638
    :cond_b
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_HIDE_SIGNAL_LEVEL_AT_WFC_STATE:Z

    if-eqz v0, :cond_c

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    .line 638
    if-eqz v0, :cond_c

    .line 639
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 638
    if-eqz v0, :cond_c

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 643
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v1, v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    aget v0, v1, v0

    return v0

    .line 645
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v0, :cond_13

    .line 646
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v0, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 647
    :cond_e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCTCRssiTypeIcon()V

    .line 650
    :cond_f
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_SIGNAL_LEVE_ZERO_IN_NO_SVC_AT_TMOWFC:Z

    if-eqz v0, :cond_10

    .line 651
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    if-ne v0, v3, :cond_10

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 655
    :cond_10
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_CHANGE_ONE_SIGNAL_LEVEL_PER_SEC:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransitionState:Z

    if-eqz v0, :cond_12

    .line 656
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    if-gez v0, :cond_11

    .line 657
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    aget v0, v0, v2

    return v0

    .line 659
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbIcons:[[I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    aget-object v0, v1, v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentSignalStrength:I

    aget v0, v0, v1

    return v0

    .line 663
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbDiscState:I

    return v0

    .line 665
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mSbNullState:I

    return v0
.end method

.method public getIndianOperator(I)Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 2876
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isRJIOSimInserted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2877
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object v1

    .line 2879
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 2880
    .local v0, "operatorName":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 2881
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2882
    const-string/jumbo v1, "airtel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2883
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->AIRTEL:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object v1

    .line 2884
    :cond_1
    const-string/jumbo v1, "jio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2885
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->RELIANCE:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object v1

    .line 2888
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;->OTHERS:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    return-object v1
.end method

.method protected getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 3420
    if-eqz p1, :cond_0

    .line 3421
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3423
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 3424
    :catch_0
    move-exception v0

    .line 3425
    .local v0, "ex":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "(unknown)"

    return-object v2

    .line 3428
    .end local v0    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    const-string/jumbo v2, "(null)"

    return-object v2
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 1578
    const/4 v0, 0x0

    return v0

    .line 1580
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 939
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    .line 940
    .local v11, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_9

    .line 943
    const-string/jumbo v2, "subscription"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 945
    .local v23, "subId":I
    const-string/jumbo v2, "CTC"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 946
    const-string/jumbo v2, "showSpn"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 947
    .local v18, "showSpn":Z
    const-string/jumbo v2, "spn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 948
    .local v21, "spn":Ljava/lang/String;
    const-string/jumbo v2, "showPlmn"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v17

    .line 949
    .local v17, "showPlmn":Z
    const-string/jumbo v2, "plmn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 950
    .local v15, "plmn":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 951
    .local v22, "str":Ljava/lang/StringBuilder;
    invoke-static/range {v23 .. v23}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v19

    .line 953
    .local v19, "slotId":I
    if-eqz v17, :cond_0

    if-eqz v15, :cond_0

    .line 954
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    :cond_0
    if-eqz v18, :cond_2

    if-eqz v21, :cond_2

    .line 957
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    :cond_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 962
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v2, :cond_4

    .line 975
    :cond_3
    :goto_0
    return-void

    .line 963
    :cond_4
    if-ltz v19, :cond_5

    const/4 v2, 0x2

    move/from16 v0, v19

    if-lt v0, v2, :cond_6

    .line 964
    :cond_5
    const/16 v19, 0x0

    .line 967
    :cond_6
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v19

    .line 973
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    goto :goto_0

    .line 970
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    aput-object v3, v2, v19

    goto :goto_1

    .line 978
    .end local v15    # "plmn":Ljava/lang/String;
    .end local v17    # "showPlmn":Z
    .end local v18    # "showSpn":Z
    .end local v19    # "slotId":I
    .end local v21    # "spn":Ljava/lang/String;
    .end local v22    # "str":Ljava/lang/StringBuilder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    move/from16 v0, v23

    if-eq v2, v0, :cond_9

    .line 979
    return-void

    .line 983
    .end local v23    # "subId":I
    :cond_9
    const-string/jumbo v2, "showSpn"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 984
    const-string/jumbo v2, "spn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 985
    const-string/jumbo v2, "spnData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 986
    const-string/jumbo v2, "showPlmn"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 987
    const-string/jumbo v2, "plmn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    .line 983
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 989
    const-string/jumbo v2, "showSpn"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 990
    const-string/jumbo v2, "spn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 991
    const-string/jumbo v2, "spnData"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 992
    const-string/jumbo v2, "showPlmn"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 993
    const-string/jumbo v2, "plmn"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 994
    const-string/jumbo v2, "efspn"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    move-object/from16 v2, p0

    .line 989
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setLastNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 996
    const-string/jumbo v2, "ZVV"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 997
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    .line 999
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 938
    :cond_b
    :goto_2
    return-void

    .line 1000
    :cond_c
    const-string/jumbo v2, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1002
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    const-string/jumbo v2, "cbMsgBody"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    goto :goto_2

    .line 1004
    :cond_d
    const-string/jumbo v2, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1005
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    goto :goto_2

    .line 1006
    :cond_e
    const-string/jumbo v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1007
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateDataSim()V

    .line 1008
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto :goto_2

    .line 1009
    :cond_f
    const-string/jumbo v2, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1010
    const-string/jumbo v2, "network_manually_selected"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1011
    .local v12, "mNetworkManuallySelectedTemp":Ljava/lang/String;
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_10

    .line 1012
    const-string/jumbo v2, "network_manually_selected_phone_id"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 1013
    .local v14, "phoneId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    if-eqz v2, :cond_10

    if-ltz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    array-length v2, v2

    if-ge v14, v2, :cond_10

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_11

    .end local v12    # "mNetworkManuallySelectedTemp":Ljava/lang/String;
    :goto_3
    aput-object v12, v2, v14

    .line 1017
    .end local v14    # "phoneId":I
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowSpn:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastDataSpn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastShowPlmn:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastPlmn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastEFSPN:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    goto/16 :goto_2

    .line 1014
    .restart local v12    # "mNetworkManuallySelectedTemp":Ljava/lang/String;
    .restart local v14    # "phoneId":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    aget-object v12, v3, v14

    goto :goto_3

    .line 1020
    .end local v12    # "mNetworkManuallySelectedTemp":Ljava/lang/String;
    .end local v14    # "phoneId":I
    :cond_12
    const-string/jumbo v2, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_2

    .line 1023
    :cond_13
    const-string/jumbo v2, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1024
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    .line 1025
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_2

    .line 1029
    :cond_14
    const-string/jumbo v2, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v13, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    .line 1031
    .local v13, "oldCAIndicator":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v3, "caindicator"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LTE WIDEBAND : mCurrentState.isCAIndicator = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " oldCAIndicator = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isCAIndicator:Z

    if-eq v13, v2, :cond_b

    .line 1034
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1036
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x47

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1041
    .end local v13    # "oldCAIndicator":Z
    :cond_16
    const-string/jumbo v2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1042
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceSim()V

    .line 1043
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_2

    .line 1047
    :cond_17
    const-string/jumbo v2, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 1048
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1047
    if-eqz v2, :cond_1c

    .line 1050
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCardOperatorInfo()V

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v2, :cond_1a

    .line 1062
    :cond_19
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceSim()V

    .line 1064
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    goto/16 :goto_2

    .line 1054
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_1b

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    goto :goto_4

    .line 1057
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_4

    .line 1068
    :cond_1c
    const-string/jumbo v2, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1069
    const-string/jumbo v2, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1070
    .local v16, "serviceStatus":Ljava/lang/String;
    if-eqz v16, :cond_b

    .line 1071
    const-string/jumbo v2, "persist.sys.softsim.status"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    const-string/jumbo v4, "default"

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1072
    .local v20, "softSimState":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " softSim ServiceStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", softSimState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const-string/jumbo v2, "on"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1075
    const-string/jumbo v2, "activating"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string/jumbo v2, "activated"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1076
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v3, -0x2

    if-eq v2, v3, :cond_b

    .line 1077
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v3, -0x3

    if-eq v2, v3, :cond_b

    .line 1078
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_2

    .line 1082
    :cond_1e
    const-string/jumbo v2, "activating"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string/jumbo v2, "activated"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_5
    if-nez v2, :cond_b

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isSRoaming:Z

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_2

    .line 1082
    :cond_1f
    const/4 v2, 0x1

    goto :goto_5

    .line 1090
    .end local v16    # "serviceStatus":Ljava/lang/String;
    .end local v20    # "softSimState":Ljava/lang/String;
    :cond_20
    const-string/jumbo v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1092
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_21

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCarrierText()V

    .line 1097
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateVoiceSim()V

    .line 1100
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_AT_CTC_CARD:Z

    if-eqz v2, :cond_22

    .line 1101
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateCardOperatorInfo()V

    .line 1103
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    goto/16 :goto_2
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 20
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .prologue
    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    .line 484
    .local v17, "icons":Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getContentDescription()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v15

    .line 485
    .local v15, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v11

    .line 486
    .local v11, "dataContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    sget-object v9, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    if-ne v2, v9, :cond_d

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    move/from16 v16, v0

    .line 490
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActiveSimCount:I

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mHasMobileData:Z

    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v9

    if-nez v9, :cond_e

    .line 493
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget v9, v9, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    if-nez v9, :cond_f

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-nez v9, :cond_f

    const/4 v9, 0x1

    .line 492
    :goto_1
    iput-boolean v9, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    .line 500
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    move/from16 v18, v0

    .line 506
    .local v18, "showDataIcon":Z
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v2, :cond_11

    :cond_1
    const/4 v2, 0x0

    .line 507
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getCurrentIconId()I

    move-result v9

    .line 506
    invoke-direct {v3, v2, v9, v15}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 509
    .local v3, "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    const/4 v6, 0x0

    .line 510
    .local v6, "qsTypeIcon":I
    const/4 v4, 0x0

    .line 511
    .local v4, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    const/4 v12, 0x0

    .line 513
    .local v12, "description":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v2, :cond_2

    .line 514
    if-eqz v18, :cond_12

    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mQsDataType:I

    .line 516
    :goto_3
    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    .end local v4    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    if-eqz v2, :cond_14

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    :goto_4
    const/4 v9, 0x0

    .line 516
    invoke-direct {v4, v2, v9, v15}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZILjava/lang/String;)V

    .line 521
    .local v4, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v2, :cond_15

    const/4 v12, 0x0

    .line 523
    .end local v4    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v12    # "description":Ljava/lang/String;
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_3

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-eqz v2, :cond_16

    .line 523
    :cond_3
    const/4 v7, 0x0

    .line 526
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_4

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-eqz v2, :cond_17

    .line 526
    :cond_4
    const/4 v8, 0x0

    .line 534
    :goto_7
    if-eqz v18, :cond_18

    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mDataType:I

    .line 536
    .local v5, "typeIcon":I
    :goto_8
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_PURE_SIGNAL_ICON:Z

    if-eqz v2, :cond_5

    .line 537
    const/4 v5, 0x0

    .line 540
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v2, :cond_6

    .line 541
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    .line 545
    :cond_6
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SHOW_DISABLED_DATA_ICON:Z

    if-eqz v2, :cond_7

    .line 546
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldShowDisabledDataIcon()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 547
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDisabledDataIcon:I

    .line 551
    :cond_7
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_TW_WFC_CONCEPT:Z

    if-eqz v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldHideDataIconForVoWifi()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 552
    const/4 v5, 0x0

    .line 557
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setBtTetherVisible(Z)V

    .line 560
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_MPTCP:Z

    if-eqz v2, :cond_9

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshMPTCPIndicator()V

    .line 565
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_b

    .line 566
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mActiveSimCount:I

    const/4 v9, 0x2

    if-ne v2, v9, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceSim:Z

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    move/from16 v19, v0

    .line 567
    :goto_9
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v2, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 569
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    .line 568
    const v9, 0x7f02068f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1, v9, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSlotFocusVisible(ZII)V

    .line 577
    :cond_b
    :goto_a
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_CTC_OP_SIGNAL_SPEC:Z

    if-nez v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->shouldDisplayCTCOpSignalIcon()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 578
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mRssiTypeIconId:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setRssiTypeIcon(II)V

    .line 585
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getActivityIcon()I

    move-result v9

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getRoamingIcon()I

    move-result v10

    .line 586
    move-object/from16 v0, v17

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mIsWide:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    move-object/from16 v2, p1

    .line 584
    invoke-interface/range {v2 .. v14}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIILjava/lang/String;Ljava/lang/String;ZI)V

    .line 481
    return-void

    .line 486
    .end local v3    # "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v5    # "typeIcon":I
    .end local v6    # "qsTypeIcon":I
    .end local v18    # "showDataIcon":Z
    :cond_d
    const/16 v16, 0x0

    .local v16, "dataDisabled":Z
    goto/16 :goto_0

    .line 492
    .end local v16    # "dataDisabled":Z
    :cond_e
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 493
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 492
    :cond_10
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 506
    .restart local v18    # "showDataIcon":Z
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 514
    .restart local v3    # "statusIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .local v4, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .restart local v6    # "qsTypeIcon":I
    .restart local v12    # "description":Ljava/lang/String;
    :cond_12
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 517
    .end local v4    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_13
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 516
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 521
    .local v4, "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v12, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .local v12, "description":Ljava/lang/String;
    goto/16 :goto_5

    .line 525
    .end local v4    # "qsIcon":Lcom/android/systemui/statusbar/policy/NetworkController$IconState;
    .end local v12    # "description":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v7, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    .local v7, "activityIn":Z
    goto/16 :goto_6

    .line 528
    .end local v7    # "activityIn":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v8, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    .local v8, "activityOut":Z
    goto/16 :goto_7

    .line 534
    .end local v8    # "activityOut":Z
    :cond_18
    const/4 v5, 0x0

    .restart local v5    # "typeIcon":I
    goto/16 :goto_8

    .line 566
    :cond_19
    const/16 v19, 0x0

    .local v19, "visible":Z
    goto/16 :goto_9

    .line 571
    .end local v19    # "visible":Z
    :cond_1a
    invoke-static {}, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->getTelephonySignalStrengthFocusBg()I

    move-result v2

    .line 572
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v9

    .line 571
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSlotFocusVisible(ZII)V

    goto/16 :goto_a

    .line 580
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v9, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setRssiTypeIcon(II)V

    goto :goto_b
.end method

.method public onEmergencyModeChanged()V
    .locals 2

    .prologue
    .line 2653
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->emergencyModeActivated:Z

    .line 2654
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 2652
    return-void
.end method

.method public refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 7
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2630
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->NWBOOSTER_WIFI_SIGNAL_STRENGTH:[I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getConnectedWifiLevel()I

    move-result v6

    aget v4, v0, v6

    .line 2631
    .local v4, "nwBoosterWifiIconId":I
    const v5, 0x7f0205ec

    .line 2632
    .local v5, "nwBoosterActivityIcon":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    iget v3, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;->mNwBoosterDataType:I

    .line 2634
    .local v3, "nwBoosterDataTypeIconId":I
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->DISPLAY_NETWORK_BOOSTER_ICON_AS_SIMPLE_TYPE:Z

    if-eqz v0, :cond_0

    .line 2635
    const v5, 0x7f0205ed

    .line 2638
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterSettingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->emergencyModeActivated:Z

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, p1

    move v1, v2

    .line 2647
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNWBoosterIndicators(ZZIII)V

    .line 2629
    :goto_0
    return-void

    .line 2639
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->nwBoosterRilEnabled:Z

    if-eqz v0, :cond_3

    move-object v0, p1

    move v2, v1

    .line 2640
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNWBoosterIndicators(ZZIII)V

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 2643
    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNWBoosterIndicators(ZZIII)V

    goto :goto_0
.end method

.method public registerListener()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 391
    const v2, 0x101f1

    .line 390
    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 389
    return-void
.end method

.method public sendOperatorLogoUpdateIntent()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2660
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 2661
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIsNetworkAvailable(Z)V

    .line 2662
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.systemui.statusbar.OPERATOR_LOGO_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2663
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldDisplayOperatorIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2664
    const-string/jumbo v1, "logo_show"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2668
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2659
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 2661
    goto :goto_0

    .line 2666
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    const-string/jumbo v1, "logo_show"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "activity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1466
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v4, :cond_1

    .line 1467
    if-ne p1, v2, :cond_2

    move v1, v2

    .line 1466
    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eq p1, v4, :cond_0

    .line 1469
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 1468
    :cond_0
    :goto_1
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    .line 1470
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 1465
    return-void

    :cond_1
    move v1, v2

    .line 1466
    goto :goto_0

    :cond_2
    move v1, v3

    .line 1467
    goto :goto_0

    :cond_3
    move v2, v3

    .line 1469
    goto :goto_1
.end method

.method public setAirplaneMode(Z)V
    .locals 3
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 342
    return-void

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_2

    .line 347
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCarrierNetworkChangeMode(Z)V
    .locals 1
    .param p1, "carrierNetworkChangeMode"    # Z

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    .line 381
    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 3
    .param p1, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mapIconSets()V

    .line 302
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateTelephony()V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v0, :cond_4

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v0, :cond_8

    .line 323
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 324
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_2

    .line 325
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubId:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_3

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const v1, 0x10402b3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v0, :cond_9

    .line 299
    :cond_3
    :goto_1
    return-void

    .line 306
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .line 307
    const v1, 0x104029b

    .line 306
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_7

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string/jumbo v0, "CTC"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    goto :goto_0

    .line 310
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    aput-object v0, v1, v2

    goto :goto_2

    .line 314
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 328
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_a

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    goto :goto_1

    .line 331
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setUserSetupComplete(Z)V
    .locals 1
    .param p1, "userSetup"    # Z

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 356
    return-void
.end method

.method public shouldShowWFCPLMN()Z
    .locals 4

    .prologue
    .line 3433
    const/4 v0, 0x1

    .line 3434
    .local v0, "shouldShowWFCPLMN":Z
    const-string/jumbo v1, "BTU"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "XEU"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3435
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsUKEECard:Z

    if-nez v1, :cond_1

    .line 3436
    const/4 v0, 0x0

    .line 3439
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldShowWFCPLMN : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    return v0
.end method

.method public unregisterListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 406
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SHOW_DISABLED_DATA_ICON:Z

    if-eqz v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 409
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 413
    const-string/jumbo v0, "ZVV"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ZTM"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 412
    if-eqz v0, :cond_2

    .line 414
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 415
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mMobileDataRoamingObserver:Landroid/database/ContentObserver;

    .line 403
    :cond_2
    return-void
.end method

.method public updateCardOperatorInfo()V
    .locals 3

    .prologue
    .line 2834
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    .line 2835
    .local v0, "numeric":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCmccCard(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCmccCard:Z

    .line 2837
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isCtcCard()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsCtcCard:Z

    .line 2839
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v1, :cond_0

    .line 2840
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getIndianOperator(I)Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIndianOperator:Lcom/android/systemui/statusbar/policy/MobileSignalController$IndianOperators;

    .line 2843
    :cond_0
    const-string/jumbo v1, "BTU"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "XEU"

    sget-object v2, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2844
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isUKEECard(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mIsUKEECard:Z

    .line 2833
    :cond_2
    return-void
.end method

.method public updateCarrierText()V
    .locals 3

    .prologue
    .line 2675
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v0, :cond_1

    .line 2674
    :cond_0
    :goto_0
    return-void

    .line 2676
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_2

    .line 2677
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    .line 2681
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCarrierText : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2679
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
    .locals 6
    .param p1, "connectedTransports"    # Ljava/util/BitSet;
    .param p2, "validatedTransports"    # Ljava/util/BitSet;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 363
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 364
    .local v0, "isValidated":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput v2, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inetCondition:I

    .line 369
    invoke-virtual {p1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    invoke-virtual {p2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 369
    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    .line 376
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateConnectivity: mCurrentState.bluetoothTethered + "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListenersIfNecessary()V

    .line 362
    return-void

    :cond_0
    move v2, v4

    .line 366
    goto :goto_0

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->bluetoothTethered:Z

    goto :goto_1
.end method

.method updateNetworkName(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1136
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->CHATTY:Z

    if-nez v2, :cond_0

    .line 1137
    :cond_0
    const-string/jumbo v2, "CarrierLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNetworkName showSpn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1138
    const-string/jumbo v4, " spn="

    .line 1137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1138
    const-string/jumbo v4, " dataSpn="

    .line 1137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1139
    const-string/jumbo v4, " showPlmn="

    .line 1137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1139
    const-string/jumbo v4, " plmn="

    .line 1137
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1142
    .local v0, "str":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1143
    .local v1, "strData":Ljava/lang/StringBuilder;
    if-eqz p4, :cond_2

    if-eqz p5, :cond_2

    .line 1144
    const-string/jumbo v2, "KDI"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1145
    const-string/jumbo v2, "KDDI"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1146
    const-string/jumbo p5, "au"

    .line 1150
    :cond_1
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :cond_2
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1154
    const-string/jumbo v2, "KDI"

    sget-object v3, Lcom/android/systemui/SystemUIRune;->PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1155
    const-string/jumbo v2, "KDDI"

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1156
    const-string/jumbo p5, "au"

    .line 1160
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1161
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    :cond_4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_a

    .line 1166
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1174
    :goto_0
    if-eqz p1, :cond_7

    if-eqz p3, :cond_7

    .line 1175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 1176
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    :cond_6
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_d

    .line 1181
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1187
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v2, :cond_e

    .line 1203
    :cond_8
    :goto_2
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_INDICATOR_PLMN:Z

    if-eqz v2, :cond_9

    .line 1204
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 1205
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStatusBarCarrierText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateStatusBarCarrierText(Ljava/lang/String;)V

    .line 1135
    :cond_9
    return-void

    .line 1169
    :cond_a
    if-nez p4, :cond_b

    .line 1168
    if-eqz p1, :cond_c

    .line 1170
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 1172
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 1183
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    goto :goto_1

    .line 1188
    :cond_e
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->USE_SEARCHING_STRING_IN_NO_SERVICE:Z

    if-eqz v2, :cond_f

    .line 1189
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1190
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const v3, 0x7f0f0694

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1194
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_10

    .line 1195
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    aput-object v2, v3, v4

    .line 1196
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    goto :goto_2

    .line 1198
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method updateNetworkNameLatin(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V
    .locals 4
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "dataSpn"    # Ljava/lang/String;
    .param p4, "showPlmn"    # Z
    .param p5, "plmn"    # Ljava/lang/String;
    .param p6, "efspn"    # I
    .param p7, "showCB"    # Z
    .param p8, "CBmsg"    # Ljava/lang/String;

    .prologue
    .line 1295
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mLastCB:Ljava/lang/String;

    .line 1296
    const-string/jumbo v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNetworkNameLatin showSpn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1297
    const-string/jumbo v2, " spn="

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1297
    const-string/jumbo v2, " dataSpn="

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    const-string/jumbo v2, " showPlmn="

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    const-string/jumbo v2, " plmn="

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    const-string/jumbo v2, " efspn="

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    const-string/jumbo v2, " showCB="

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    const-string/jumbo v2, " CBmsg="

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    const-string/jumbo v2, " mDataNetType="

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mDataNetType:I

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    const-string/jumbo v2, " mNetworkManuallySelected="

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1298
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    .line 1296
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-eqz v0, :cond_1

    .line 1301
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1320
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mShouldBlockPLMNInfoUpdate:Z

    if-eqz v0, :cond_8

    .line 1294
    :cond_0
    :goto_1
    return-void

    .line 1302
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    const v1, 0x10402b3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1303
    :cond_2
    const-string/jumbo v0, "ZVV"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1307
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-object p5, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 1304
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkManuallySelected:[Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0

    .line 1311
    :cond_5
    const-string/jumbo v0, "ZVV"

    sget-object v1, Lcom/android/systemui/SystemUIRune;->STATUSBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isGsmZVV()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1315
    :cond_6
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatinCB(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1312
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateNetworkNameLatinLAC(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1323
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_9

    .line 1324
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSlotId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;I)V

    .line 1332
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getStatusBarCarrierText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateStatusBarCarrierText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1326
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateCarrierText(Ljava/lang/String;)V

    goto :goto_2
.end method
