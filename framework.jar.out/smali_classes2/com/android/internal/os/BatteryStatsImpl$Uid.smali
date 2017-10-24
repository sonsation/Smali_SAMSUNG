.class public Lcom/android/internal/os/BatteryStatsImpl$Uid;
.super Landroid/os/BatteryStats$Uid;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;,
        Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    }
.end annotation


# static fields
.field static final NO_BATCHED_SCAN_STARTED:I = -0x1


# instance fields
.field mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field protected mBsi:Lcom/android/internal/os/BatteryStatsImpl;

.field mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mCurStepSystemTime:J

.field mCurStepUserTime:J

.field mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mFullWifiLockOut:Z

.field mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mLastStepSystemTime:J

.field mLastStepUserTime:J

.field mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field private mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mPackageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;",
            ">;"
        }
    .end annotation
.end field

.field final mPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation
.end field

.field mProcessState:I

.field mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mProcessStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;",
            ">;"
        }
    .end annotation
.end field

.field final mSensorStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;",
            ">;"
        }
    .end annotation
.end field

.field final mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;",
            ">;"
        }
    .end annotation
.end field

.field mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field final mUid:I

.field mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

.field mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

.field mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field final mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap",
            "<",
            "Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;",
            ">;"
        }
    .end annotation
.end field

.field mWifiBatchedScanBinStarted:I

.field mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

.field mWifiMulticastEnabled:Z

.field mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field private mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

.field mWifiRunning:Z

.field mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

.field mWifiScanStarted:Z

.field mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;


# direct methods
.method static synthetic -get0(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/os/BatteryStatsImpl$Uid;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .locals 8
    .param p1, "bsi"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "uid"    # I

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v0, -0x1

    .line 5232
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid;-><init>()V

    .line 5128
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 5141
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 5215
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    .line 5220
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    .line 5225
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    .line 5230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    .line 5233
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    .line 5234
    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    .line 5236
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5237
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5238
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5240
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$1;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 5245
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$2;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 5251
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$3;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Uid;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    .line 5258
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5259
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5258
    const/4 v3, 0x4

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5260
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5261
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, p0

    move v3, v6

    .line 5260
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5262
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5263
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, p0

    move v3, v7

    .line 5262
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5264
    new-array v0, v6, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5265
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5266
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5265
    const/4 v3, 0x7

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5267
    new-array v0, v7, [Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5269
    sget v0, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    new-array v0, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5232
    return-void
.end method


# virtual methods
.method public createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    .prologue
    .line 5458
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5459
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5460
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5459
    const/16 v3, 0xf

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5462
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    .prologue
    .line 5562
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5563
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5564
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5563
    const/16 v3, 0x13

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5566
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    .prologue
    .line 5530
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5531
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5532
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5531
    const/16 v3, 0x11

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5534
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    .prologue
    .line 5506
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5507
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5508
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v3, 0x10

    move-object v2, p0

    .line 5507
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5510
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 5554
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5555
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5556
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v3, 0xa

    move-object v2, p0

    .line 5555
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5558
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;
    .locals 4

    .prologue
    .line 5637
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-nez v0, :cond_0

    .line 5638
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5639
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5638
    const/16 v3, 0x9

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 5641
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 6

    .prologue
    .line 5482
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5483
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5484
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5483
    const/16 v3, 0x8

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5486
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 5713
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getAudioTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5714
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 7904
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .prologue
    .line 5425
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public bridge synthetic getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 5738
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothScanTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5739
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 5728
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getCameraTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5729
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getCpuPowerMaUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5895
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 5723
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getFlashlightTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5724
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public bridge synthetic getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 5733
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundActivityTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5734
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getFullWifiLockTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 5664
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5665
    const-wide/16 v0, 0x0

    return-wide v0

    .line 5667
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getJobStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5285
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getMobileRadioActiveCount(I)I
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5879
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 5880
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    long-to-int v0, v0

    .line 5879
    :goto_0
    return v0

    .line 5880
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMobileRadioActiveTime(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5873
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 5874
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    .line 5873
    :goto_0
    return-wide v0

    .line 5874
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMobileRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5936
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 5937
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 5939
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .prologue
    .line 5430
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getNetworkActivityBytes(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5853
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 5854
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5855
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 5857
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkActivityPackets(II)J
    .locals 2
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5863
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 5864
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5865
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 5867
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOrCreateBluetoothControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    .prologue
    .line 5442
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    .line 5443
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5444
    const/4 v2, 0x1

    .line 5443
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 5446
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getOrCreateModemControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    .prologue
    .line 5450
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    .line 5451
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5452
    const/4 v2, 0x5

    .line 5451
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 5454
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getOrCreateWifiControllerActivityLocked()Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;
    .locals 3

    .prologue
    .line 5434
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    if-nez v0, :cond_0

    .line 5435
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5436
    const/4 v2, 0x1

    .line 5435
    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;I)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 5438
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getPackageStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Pkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5300
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 7726
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 7727
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    if-nez v0, :cond_0

    .line 7728
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 7729
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7732
    :cond_0
    return-object v0
.end method

.method public getPidStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Pid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7709
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 7713
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 7714
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v0, :cond_0

    .line 7715
    new-instance v0, Landroid/os/BatteryStats$Uid$Pid;

    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    invoke-direct {v0, p0}, Landroid/os/BatteryStats$Uid$Pid;-><init>(Landroid/os/BatteryStats$Uid;)V

    .line 7716
    .restart local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7718
    :cond_0
    return-object v0
.end method

.method public getProcessStateTime(IJI)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 5756
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    :cond_0
    return-wide v2

    .line 5757
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 5758
    return-wide v2

    .line 5760
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getProcessStateTimer(I)Landroid/os/BatteryStats$Timer;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 5764
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getProcessStateTimer(I)Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 5765
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 5766
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getProcessStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Proc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5295
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 7663
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 7664
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-nez v0, :cond_0

    .line 7665
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .end local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    .line 7666
    .restart local v0    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7669
    :cond_0
    return-object v0
.end method

.method public getSensorStats()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid$Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5290
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    .locals 7
    .param p1, "sensor"    # I
    .param p2, "create"    # Z

    .prologue
    const/4 v2, 0x0

    .line 7780
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 7781
    .local v6, "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    if-nez v6, :cond_1

    .line 7782
    if-nez p2, :cond_0

    .line 7783
    return-object v2

    .line 7785
    :cond_0
    new-instance v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .end local v6    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v6, v1, p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 7786
    .restart local v6    # "se":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7788
    :cond_1
    iget-object v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7789
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_2

    .line 7790
    return-object v0

    .line 7792
    :cond_2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 7793
    .local v4, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v4, :cond_3

    .line 7794
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 7795
    .restart local v4    # "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mSensorTimers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7797
    :cond_3
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .end local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 7798
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 7797
    const/4 v3, 0x3

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    .line 7799
    .restart local v0    # "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    iput-object v0, v6, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->mTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7800
    return-object v0
.end method

.method public getServiceStatsLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "serv"    # Ljava/lang/String;

    .prologue
    .line 7740
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPackageStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-result-object v0

    .line 7741
    .local v0, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    .line 7742
    .local v1, "ss":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;
    if-nez v1, :cond_0

    .line 7743
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->newServiceStatsLocked()Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    move-result-object v1

    .line 7744
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7747
    :cond_0
    return-object v1
.end method

.method public getSyncStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5280
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getSystemCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5890
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeAtCpuSpeed(III)J
    .locals 4
    .param p1, "cluster"    # I
    .param p2, "step"    # I
    .param p3, "which"    # I

    .prologue
    .line 5900
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v2, :cond_0

    .line 5901
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 5902
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v1, v2, p1

    .line 5903
    .local v1, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v1, :cond_0

    .line 5904
    if-ltz p2, :cond_0

    array-length v2, v1

    if-ge p2, v2, :cond_0

    .line 5905
    aget-object v0, v1, p2

    .line 5906
    .local v0, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v0, :cond_0

    .line 5907
    invoke-virtual {v0, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v2

    return-wide v2

    .line 5913
    .end local v0    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v1    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getTimeAtGpuSpeed(II)J
    .locals 2
    .param p1, "step"    # I
    .param p2, "which"    # I

    .prologue
    .line 5919
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 5920
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 5921
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 5924
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 5305
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUid:I

    return v0
.end method

.method public getUserActivityCount(II)I
    .locals 1
    .param p1, "type"    # I
    .param p2, "which"    # I

    .prologue
    .line 5794
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 5795
    const/4 v0, 0x0

    return v0

    .line 5797
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getUserCpuTimeUs(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5885
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getVibratorOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 5770
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5771
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    return-object v0
.end method

.method public bridge synthetic getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;
    .locals 1

    .prologue
    .line 5718
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;

    move-result-object v0

    return-object v0
.end method

.method public getVideoTurnedOnTimer()Lcom/android/internal/os/BatteryStatsImpl$Timer;
    .locals 1

    .prologue
    .line 5719
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    return-object v0
.end method

.method public getWakelockStats()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Uid$Wakelock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5275
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public getWifiBatchedScanCount(II)I
    .locals 2
    .param p1, "csphBin"    # I
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 5697
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    return v1

    .line 5698
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 5699
    return v1

    .line 5701
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiBatchedScanTime(IJI)J
    .locals 4
    .param p1, "csphBin"    # I
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "which"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 5688
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    return-wide v2

    .line 5689
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 5690
    return-wide v2

    .line 5692
    :cond_2
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
    .locals 1

    .prologue
    .line 5420
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    return-object v0
.end method

.method public getWifiMulticastTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 5706
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5707
    const-wide/16 v0, 0x0

    return-wide v0

    .line 5709
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiRadioApWakeupCount(I)J
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 5950
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    .line 5951
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->getCountLocked(I)J

    move-result-wide v0

    return-wide v0

    .line 5953
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiRunningTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 5656
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5657
    const-wide/16 v0, 0x0

    return-wide v0

    .line 5659
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getWifiScanCount(I)I
    .locals 1
    .param p1, "which"    # I

    .prologue
    .line 5680
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5681
    const/4 v0, 0x0

    return v0

    .line 5683
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getCountLocked(I)I

    move-result v0

    return v0
.end method

.method public getWifiScanTime(JI)J
    .locals 3
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 5672
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5673
    const-wide/16 v0, 0x0

    return-wide v0

    .line 5675
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasNetworkActivity()Z
    .locals 1

    .prologue
    .line 5848
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUserActivity()Z
    .locals 1

    .prologue
    .line 5789
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initNetworkActivityLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 5957
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5958
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5959
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 5960
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 5961
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 5959
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5963
    :cond_0
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5964
    new-instance v1, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5956
    return-void
.end method

.method initUserActivityLocked()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 5819
    new-array v1, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 5820
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 5821
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v2, v1, v0

    .line 5820
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5818
    :cond_0
    return-void
.end method

.method makeProcessState(ILandroid/os/Parcel;)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/16 v3, 0xc

    const/4 v4, 0x0

    .line 5743
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    .line 5745
    :cond_1
    if-nez p2, :cond_2

    .line 5746
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5747
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, p0

    .line 5746
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v0, v6, p1

    .line 5742
    :goto_0
    return-void

    .line 5749
    :cond_2
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5750
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, p0

    move-object v6, p2

    .line 5749
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v0, v7, p1

    goto :goto_0
.end method

.method makeWifiBatchedScanBin(ILandroid/os/Parcel;)V
    .locals 8
    .param p1, "i"    # I
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/16 v3, 0xb

    .line 5801
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    :cond_0
    return-void

    .line 5803
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 5804
    .local v4, "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    if-nez v4, :cond_2

    .line 5805
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5806
    .restart local v4    # "collected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mWifiBatchedScanTimers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5808
    :cond_2
    if-nez p2, :cond_3

    .line 5809
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5810
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, p0

    .line 5809
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v0, v6, p1

    .line 5800
    :goto_0
    return-void

    .line 5812
    :cond_3
    iget-object v7, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5813
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object v2, p0

    move-object v6, p2

    .line 5812
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v0, v7, p1

    goto :goto_0
.end method

.method public noteActivityPausedLocked(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5600
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5601
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5603
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->SEC_FEATURE_GPU:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->SEC_FEATURE_GPU_UTIL:Z

    if-eqz v0, :cond_0

    .line 5604
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Lcom/android/internal/os/BatteryStatsImpl$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$MyHandler;->removeMessages(I)V

    .line 5605
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteGpuUpdateLocked(Z)V

    .line 5599
    :cond_0
    return-void
.end method

.method public noteActivityResumedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5588
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createForegroundActivityTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5590
    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->SEC_FEATURE_GPU:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/os/BatteryStatsImpl;->SEC_FEATURE_GPU_UTIL:Z

    if-eqz v0, :cond_0

    .line 5591
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getUid()I

    move-result v0

    sput v0, Lcom/android/internal/os/BatteryStatsImpl;->mLastUid:I

    .line 5592
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->noteGpuResetLocked()V

    .line 5593
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap2(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5586
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5470
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5471
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5469
    :cond_0
    return-void
.end method

.method public noteAudioTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5466
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createAudioTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5465
    return-void
.end method

.method public noteBluetoothScanStartedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5570
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createBluetoothScanTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5569
    return-void
.end method

.method public noteBluetoothScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5574
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5575
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5573
    :cond_0
    return-void
.end method

.method public noteCameraTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5542
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5543
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5541
    :cond_0
    return-void
.end method

.method public noteCameraTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5538
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createCameraTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5537
    return-void
.end method

.method public noteFlashlightTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5518
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5519
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5517
    :cond_0
    return-void
.end method

.method public noteFlashlightTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5514
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createFlashlightTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5513
    return-void
.end method

.method public noteFullWifiLockAcquiredLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5330
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-nez v0, :cond_1

    .line 5331
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 5332
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5333
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5334
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5333
    const/4 v3, 0x5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5336
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5329
    :cond_1
    return-void
.end method

.method public noteFullWifiLockReleasedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5342
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    if-eqz v0, :cond_0

    .line 5343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 5344
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5341
    :cond_0
    return-void
.end method

.method public noteGpuResetLocked()V
    .locals 2

    .prologue
    .line 5613
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-get1()Lcom/android/internal/os/KernelGpuSpeedReader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/KernelGpuSpeedReader;->readDelta()[J

    move-result-object v0

    .line 5612
    .local v0, "gpuSpeeds":[J
    return-void
.end method

.method public noteGpuUpdateLocked(Z)V
    .locals 10
    .param p1, "continualUpdate"    # Z

    .prologue
    .line 5617
    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-get1()Lcom/android/internal/os/KernelGpuSpeedReader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/KernelGpuSpeedReader;->readDelta()[J

    move-result-object v0

    .line 5618
    .local v0, "gpuSpeeds":[J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap0(Lcom/android/internal/os/BatteryStatsImpl;)J

    move-result-wide v2

    .line 5620
    .local v2, "gpuUtil":J
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-eqz v4, :cond_1

    long-to-double v4, v2

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryInternal:Z

    if-eqz v4, :cond_1

    .line 5621
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 5622
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v1

    if-nez v4, :cond_0

    .line 5623
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v5, v6}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    aput-object v5, v4, v1

    .line 5625
    :cond_0
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v4, v4, v1

    aget-wide v6, v0, v1

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5621
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5630
    .end local v1    # "i":I
    :cond_1
    if-eqz p1, :cond_2

    .line 5631
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap2(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5616
    :cond_2
    return-void
.end method

.method noteMobileRadioActiveTimeLocked(J)V
    .locals 5
    .param p1, "batteryUptime"    # J

    .prologue
    .line 5839
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 5840
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 5842
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5843
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5838
    return-void
.end method

.method public noteMobileRadioApWakeupLocked()V
    .locals 4

    .prologue
    .line 5929
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 5930
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5932
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5928
    return-void
.end method

.method noteNetworkActivityLocked(IJJ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "deltaBytes"    # J
    .param p4, "deltaPackets"    # J

    .prologue
    .line 5826
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 5827
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initNetworkActivityLocked()V

    .line 5829
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    .line 5830
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5831
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5825
    :goto_0
    return-void

    .line 5833
    :cond_1
    const-string/jumbo v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown network activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5834
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 5833
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public noteResetAudioLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5476
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5477
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 5475
    :cond_0
    return-void
.end method

.method public noteResetBluetoothScanLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5580
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5581
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 5579
    :cond_0
    return-void
.end method

.method public noteResetCameraLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5548
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5549
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 5547
    :cond_0
    return-void
.end method

.method public noteResetFlashlightLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5524
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5525
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 5523
    :cond_0
    return-void
.end method

.method public noteResetVideoLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5500
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5501
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopAllRunningLocked(J)V

    .line 5499
    :cond_0
    return-void
.end method

.method public noteStartGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 7890
    const/16 v1, -0x2710

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 7891
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7892
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7889
    :cond_0
    return-void
.end method

.method public noteStartJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 7818
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7819
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7820
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7817
    :cond_0
    return-void
.end method

.method public noteStartSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 7875
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 7876
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7877
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7874
    :cond_0
    return-void
.end method

.method public noteStartSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 7804
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7805
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7806
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7803
    :cond_0
    return-void
.end method

.method public noteStartWakeLocked(ILjava/lang/String;IJ)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .prologue
    .line 7832
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->startObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 7833
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    .line 7834
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7836
    :cond_0
    if-ltz p1, :cond_1

    if-nez p3, :cond_1

    .line 7837
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getPidStatsLocked(I)Landroid/os/BatteryStats$Uid$Pid;

    move-result-object v0

    .line 7838
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-nez v2, :cond_1

    .line 7839
    iput-wide p4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 7831
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteStopGps(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 7897
    const/16 v1, -0x2710

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 7898
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7899
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7896
    :cond_0
    return-void
.end method

.method public noteStopJobLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 7825
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7826
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7827
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7824
    :cond_0
    return-void
.end method

.method public noteStopSensor(IJ)V
    .locals 2
    .param p1, "sensor"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 7883
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getSensorTimerLocked(IZ)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    .line 7884
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7885
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7881
    :cond_0
    return-void
.end method

.method public noteStopSyncLocked(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    .line 7811
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7812
    .local v0, "t":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    if-eqz v0, :cond_0

    .line 7813
    invoke-virtual {v0, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7810
    :cond_0
    return-void
.end method

.method public noteStopWakeLocked(ILjava/lang/String;IJ)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .prologue
    .line 7845
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v2, p2}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->stopObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 7846
    .local v1, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    if-eqz v1, :cond_0

    .line 7847
    invoke-virtual {v1, p3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7849
    :cond_0
    if-ltz p1, :cond_1

    if-nez p3, :cond_1

    .line 7850
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryStats$Uid$Pid;

    .line 7851
    .local v0, "p":Landroid/os/BatteryStats$Uid$Pid;
    if-eqz v0, :cond_1

    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v2, :cond_1

    .line 7852
    iget v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    add-int/lit8 v3, v2, -0x1

    iput v3, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7853
    iget-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    iget-wide v4, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v4, p4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    .line 7854
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    .line 7844
    .end local v0    # "p":Landroid/os/BatteryStats$Uid$Pid;
    :cond_1
    return-void
.end method

.method public noteUserActivityLocked(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 5776
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    if-nez v0, :cond_0

    .line 5777
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->initUserActivityLocked()V

    .line 5779
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 5780
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->stepAtomic()V

    .line 5775
    :goto_0
    return-void

    .line 5782
    :cond_1
    const-string/jumbo v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown user activity type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was specified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5783
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 5782
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public noteVibratorOffLocked()V
    .locals 2

    .prologue
    .line 5649
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    if-eqz v0, :cond_0

    .line 5650
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->abortLastDuration(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 5648
    :cond_0
    return-void
.end method

.method public noteVibratorOnLocked(J)V
    .locals 3
    .param p1, "durationMillis"    # J

    .prologue
    .line 5645
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVibratorOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->addDuration(Lcom/android/internal/os/BatteryStatsImpl;J)V

    .line 5644
    return-void
.end method

.method public noteVideoTurnedOffLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5494
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-eqz v0, :cond_0

    .line 5495
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5493
    :cond_0
    return-void
.end method

.method public noteVideoTurnedOnLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5490
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->createVideoTurnedOnTimerLocked()Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5489
    return-void
.end method

.method public noteWifiBatchedScanStartedLocked(IJ)V
    .locals 4
    .param p1, "csph"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v3, 0x0

    .line 5370
    const/4 v0, 0x0

    .line 5371
    .local v0, "bin":I
    :goto_0
    const/16 v1, 0x8

    if-le p1, v1, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 5372
    shr-int/lit8 p1, p1, 0x3

    .line 5373
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5376
    :cond_0
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-ne v1, v0, :cond_1

    return-void

    .line 5378
    :cond_1
    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 5379
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5382
    :cond_2
    iput v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 5383
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    .line 5384
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 5386
    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5369
    return-void
.end method

.method public noteWifiBatchedScanStoppedLocked(J)V
    .locals 3
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    const/4 v2, -0x1

    .line 5391
    iget v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    if-eq v0, v2, :cond_0

    .line 5392
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5394
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 5390
    :cond_0
    return-void
.end method

.method public noteWifiMulticastDisabledLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5412
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-eqz v0, :cond_0

    .line 5413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 5414
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5411
    :cond_0
    return-void
.end method

.method public noteWifiMulticastEnabledLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5400
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    if-nez v0, :cond_1

    .line 5401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 5402
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5403
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5404
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/4 v3, 0x7

    move-object v2, p0

    .line 5403
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5406
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5399
    :cond_1
    return-void
.end method

.method public noteWifiRadioApWakeupLocked()V
    .locals 4

    .prologue
    .line 5943
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    if-nez v0, :cond_0

    .line 5944
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 5946
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->addCountLocked(J)V

    .line 5942
    return-void
.end method

.method public noteWifiRunningLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5310
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-nez v0, :cond_1

    .line 5311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 5312
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5313
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5314
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5313
    const/4 v3, 0x4

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5316
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5309
    :cond_1
    return-void
.end method

.method public noteWifiScanStartedLocked(J)V
    .locals 7
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5350
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-nez v0, :cond_1

    .line 5351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 5352
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    if-nez v0, :cond_0

    .line 5353
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, v1, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 5354
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v2, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v2, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 5353
    const/4 v3, 0x6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 5356
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 5349
    :cond_1
    return-void
.end method

.method public noteWifiScanStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5362
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    if-eqz v0, :cond_0

    .line 5363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 5364
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5361
    :cond_0
    return-void
.end method

.method public noteWifiStoppedLocked(J)V
    .locals 1
    .param p1, "elapsedRealtimeMs"    # J

    .prologue
    .line 5322
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    if-eqz v0, :cond_0

    .line 5323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 5324
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 5321
    :cond_0
    return-void
.end method

.method readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .locals 38
    .param p1, "timeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p2, "screenOffTimeBase"    # Lcom/android/internal/os/BatteryStatsImpl$TimeBase;
    .param p3, "in"    # Landroid/os/Parcel;

    .prologue
    .line 6501
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 6502
    .local v26, "numWakelocks":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 6503
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_0
    move/from16 v0, v26

    if-ge v15, v0, :cond_0

    .line 6504
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 6505
    .local v36, "wakelockName":Ljava/lang/String;
    new-instance v35, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 6506
    .local v35, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 6507
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6503
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 6510
    .end local v35    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    .end local v36    # "wakelockName":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 6511
    .local v25, "numSyncs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 6512
    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v25

    if-ge v15, v0, :cond_2

    .line 6513
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .line 6514
    .local v34, "syncName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 6515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v37, v0

    .line 6516
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v7, 0xd

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 6515
    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6512
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 6520
    .end local v34    # "syncName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 6521
    .local v20, "numJobs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->clear()V

    .line 6522
    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v15, v0, :cond_4

    .line 6523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 6524
    .local v16, "jobName":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 6525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v37, v0

    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6522
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 6530
    .end local v16    # "jobName":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 6531
    .local v23, "numSensors":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 6532
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 6533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 6534
    .local v32, "sensorNumber":I
    new-instance v31, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move/from16 v2, v32

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;I)V

    .line 6535
    .local v31, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->readFromParcelLocked(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 6536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6532
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 6539
    .end local v31    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    .end local v32    # "sensorNumber":I
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 6540
    .local v22, "numProcs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 6541
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 6542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 6543
    .local v30, "processName":Ljava/lang/String;
    new-instance v29, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v0, v4, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Ljava/lang/String;)V

    .line 6544
    .local v29, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v29

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 6545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6541
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 6548
    .end local v29    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    .end local v30    # "processName":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 6549
    .local v21, "numPkgs":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 6550
    const/16 v18, 0x0

    .local v18, "l":I
    :goto_5
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 6551
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 6552
    .local v27, "packageName":Ljava/lang/String;
    new-instance v28, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 6553
    .local v28, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->readFromParcelLocked(Landroid/os/Parcel;)V

    .line 6554
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6550
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 6557
    .end local v27    # "packageName":Ljava/lang/String;
    .end local v28    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    .line 6558
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 6559
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6560
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mWifiRunningTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6559
    const/4 v7, 0x4

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6564
    :goto_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    .line 6565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 6566
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6567
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mFullWifiLockTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6566
    const/4 v7, 0x5

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6571
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    .line 6572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 6573
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6574
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mWifiScanTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6573
    const/4 v7, 0x6

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6578
    :goto_8
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    .line 6579
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_9
    const/4 v4, 0x5

    if-ge v14, v4, :cond_c

    .line 6580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 6581
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeWifiBatchedScanBin(ILandroid/os/Parcel;)V

    .line 6579
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 6562
    .end local v14    # "i":I
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_6

    .line 6569
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_7

    .line 6576
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_8

    .line 6583
    .restart local v14    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    aput-object v5, v4, v14

    goto :goto_a

    .line 6586
    :cond_c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    .line 6587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    .line 6588
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6589
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mWifiMulticastTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6588
    const/4 v7, 0x7

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6593
    :goto_b
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 6594
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6595
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mAudioTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6594
    const/16 v7, 0xf

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6599
    :goto_c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    .line 6600
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6601
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mVideoTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6600
    const/16 v7, 0x8

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6605
    :goto_d
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 6606
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6607
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mFlashlightTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v7, 0x10

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    .line 6606
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6611
    :goto_e
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    .line 6612
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6613
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCameraTurnedOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6612
    const/16 v7, 0x11

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6617
    :goto_f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 6618
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6619
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    .line 6618
    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6623
    :goto_10
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 6624
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6625
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mBluetoothScanOnTimers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v9, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6624
    const/16 v7, 0x13

    move-object/from16 v6, p0

    move-object/from16 v10, p3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6629
    :goto_11
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 6630
    const/4 v14, 0x0

    :goto_12
    const/4 v4, 0x6

    if-ge v14, v4, :cond_15

    .line 6631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    .line 6632
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 6630
    :goto_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    .line 6591
    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_b

    .line 6597
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_c

    .line 6603
    :cond_f
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_d

    .line 6609
    :cond_10
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_e

    .line 6615
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto/16 :goto_f

    .line 6621
    :cond_12
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_10

    .line 6627
    :cond_13
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    goto :goto_11

    .line 6634
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    const/4 v5, 0x0

    aput-object v5, v4, v14

    goto :goto_13

    .line 6637
    :cond_15
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    .line 6638
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    .line 6639
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v8, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6638
    const/16 v7, 0x9

    move-object/from16 v6, p0

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;-><init>(Lcom/android/internal/os/BatteryStatsImpl$Clocks;Lcom/android/internal/os/BatteryStatsImpl$Uid;ILcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 6643
    :goto_14
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 6644
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 6645
    const/4 v14, 0x0

    :goto_15
    const/4 v4, 0x4

    if-ge v14, v4, :cond_18

    .line 6646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$Counter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v14

    .line 6645
    add-int/lit8 v14, v14, 0x1

    goto :goto_15

    .line 6641
    :cond_16
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    goto :goto_14

    .line 6649
    :cond_17
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    .line 6651
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a

    .line 6652
    const/4 v4, 0x6

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6654
    const/4 v4, 0x6

    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6653
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6655
    const/4 v14, 0x0

    :goto_16
    const/4 v4, 0x6

    if-ge v14, v4, :cond_19

    .line 6656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6657
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 6656
    aput-object v5, v4, v14

    .line 6658
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6659
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    .line 6658
    aput-object v5, v4, v14

    .line 6655
    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    .line 6661
    :cond_19
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6662
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6668
    :goto_17
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1b

    .line 6669
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6670
    const/4 v6, 0x1

    .line 6669
    move-object/from16 v0, p3

    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 6675
    :goto_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 6676
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6677
    const/4 v6, 0x1

    .line 6676
    move-object/from16 v0, p3

    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 6682
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    .line 6683
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    .line 6684
    const/4 v6, 0x5

    .line 6683
    move-object/from16 v0, p3

    invoke-direct {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;ILandroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    .line 6689
    :goto_1a
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6690
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6691
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6693
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    .line 6694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 6695
    .local v19, "numCpuClusters":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-get2(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-get2(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v4

    move/from16 v0, v19

    if-eq v4, v0, :cond_1e

    .line 6696
    new-instance v4, Landroid/os/ParcelFormatException;

    const-string/jumbo v5, "Incompatible number of cpu clusters"

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6664
    .end local v19    # "numCpuClusters":I
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6665
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto/16 :goto_17

    .line 6672
    :cond_1b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto/16 :goto_18

    .line 6679
    :cond_1c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto/16 :goto_19

    .line 6686
    :cond_1d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    goto :goto_1a

    .line 6699
    .restart local v19    # "numCpuClusters":I
    :cond_1e
    move/from16 v0, v19

    new-array v4, v0, [[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6700
    const/4 v12, 0x0

    .local v12, "cluster":I
    :goto_1b
    move/from16 v0, v19

    if-ge v12, v0, :cond_24

    .line 6701
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    .line 6702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 6703
    .local v24, "numSpeeds":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-get2(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 6704
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {v4}, Lcom/android/internal/os/BatteryStatsImpl;->-get2(Lcom/android/internal/os/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v4

    move/from16 v0, v24

    if-eq v4, v0, :cond_1f

    .line 6705
    new-instance v4, Landroid/os/ParcelFormatException;

    const-string/jumbo v5, "Incompatible number of cpu speeds"

    invoke-direct {v4, v5}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6708
    :cond_1f
    move/from16 v0, v24

    new-array v13, v0, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6709
    .local v13, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    aput-object v13, v4, v12

    .line 6710
    const/16 v33, 0x0

    .local v33, "speed":I
    :goto_1c
    move/from16 v0, v33

    move/from16 v1, v24

    if-ge v0, v1, :cond_22

    .line 6711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    .line 6712
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v4, v13, v33

    .line 6710
    :cond_20
    add-int/lit8 v33, v33, 0x1

    goto :goto_1c

    .line 6716
    .end local v13    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v24    # "numSpeeds":I
    .end local v33    # "speed":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    const/4 v5, 0x0

    aput-object v5, v4, v12

    .line 6700
    :cond_22
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    .line 6720
    .end local v12    # "cluster":I
    .end local v19    # "numCpuClusters":I
    :cond_23
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6723
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    .line 6724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 6725
    .local v11, "bins":I
    sget v4, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    if-lt v11, v4, :cond_26

    move v4, v11

    :goto_1d
    new-array v4, v4, [Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6726
    const/4 v14, 0x0

    :goto_1e
    if-ge v14, v11, :cond_28

    .line 6727
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_25

    .line 6728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    aput-object v5, v4, v14

    .line 6726
    :cond_25
    add-int/lit8 v14, v14, 0x1

    goto :goto_1e

    .line 6725
    :cond_26
    sget v4, Lcom/android/internal/os/BatteryStatsImpl;->sNumGpuSpeedSteps:I

    goto :goto_1d

    .line 6732
    .end local v11    # "bins":I
    :cond_27
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6736
    :cond_28
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_29

    .line 6737
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6742
    :goto_1f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    .line 6743
    new-instance v4, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, v5, Lcom/android/internal/os/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    move-object/from16 v0, p3

    invoke-direct {v4, v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    .line 6500
    :goto_20
    return-void

    .line 6739
    :cond_29
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_1f

    .line 6745
    :cond_2a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    goto :goto_20
.end method

.method public readJobSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7757
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7758
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7759
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7756
    return-void
.end method

.method public readSyncSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 7751
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 7752
    .local v0, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    invoke-virtual {v0, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7753
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7750
    return-void
.end method

.method public readWakeSummaryFromParcelLocked(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "wlName"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 7763
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$Uid;)V

    .line 7764
    .local v0, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7765
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 7766
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7768
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 7769
    invoke-virtual {v0, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7771
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 7772
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7774
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 7775
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->getStopwatchTimer(I)Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    .line 7762
    :cond_3
    return-void
.end method

.method public reportExcessiveCpuLocked(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    .prologue
    .line 7868
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 7869
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 7870
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveCpu(JJ)V

    .line 7867
    :cond_0
    return-void
.end method

.method public reportExcessiveWakeLocked(Ljava/lang/String;JJ)V
    .locals 2
    .param p1, "proc"    # Ljava/lang/String;
    .param p2, "overTime"    # J
    .param p4, "usedTime"    # J

    .prologue
    .line 7861
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->getProcessStatsLocked(Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v0

    .line 7862
    .local v0, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v0, :cond_0

    .line 7863
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addExcessiveWake(JJ)V

    .line 7860
    :cond_0
    return-void
.end method

.method reset()Z
    .locals 34

    .prologue
    .line 5972
    const/4 v4, 0x0

    .line 5974
    .local v4, "active":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 5975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_4

    const/4 v4, 0x0

    .line 5976
    .local v4, "active":Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunning:Z

    move/from16 v28, v0

    or-int v4, v4, v28

    .line 5978
    .end local v4    # "active":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    .line 5979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_5

    const/16 v28, 0x0

    :goto_1
    or-int v4, v4, v28

    .line 5980
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockOut:Z

    move/from16 v28, v0

    or-int v4, v4, v28

    .line 5982
    .end local v4    # "active":Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    .line 5983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_6

    const/16 v28, 0x0

    :goto_2
    or-int v4, v4, v28

    .line 5984
    .restart local v4    # "active":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanStarted:Z

    move/from16 v28, v0

    or-int v4, v4, v28

    .line 5986
    .end local v4    # "active":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_9

    .line 5987
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ge v7, v0, :cond_8

    .line 5988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    if-eqz v28, :cond_3

    .line 5989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_7

    const/16 v28, 0x0

    :goto_4
    or-int v4, v4, v28

    .line 5987
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 5975
    .end local v7    # "i":I
    .local v4, "active":Z
    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    .line 5979
    .end local v4    # "active":Z
    :cond_5
    const/16 v28, 0x1

    goto :goto_1

    .line 5983
    :cond_6
    const/16 v28, 0x1

    goto :goto_2

    .line 5989
    .restart local v7    # "i":I
    :cond_7
    const/16 v28, 0x1

    goto :goto_4

    .line 5992
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanBinStarted:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    const/16 v28, 0x1

    :goto_5
    or-int v4, v4, v28

    .line 5994
    .end local v7    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_a

    .line 5995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_13

    const/16 v28, 0x0

    :goto_6
    or-int v4, v4, v28

    .line 5996
    .local v4, "active":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastEnabled:Z

    move/from16 v28, v0

    or-int v4, v4, v28

    .line 5998
    .end local v4    # "active":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_b

    .line 5999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_14

    const/16 v28, 0x0

    :goto_7
    or-int v4, v4, v28

    .line 6001
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    .line 6002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_15

    const/16 v28, 0x0

    :goto_8
    or-int v4, v4, v28

    .line 6004
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_d

    .line 6005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_16

    const/16 v28, 0x0

    :goto_9
    or-int v4, v4, v28

    .line 6007
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_e

    .line 6008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_17

    const/16 v28, 0x0

    :goto_a
    or-int v4, v4, v28

    .line 6010
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_f

    .line 6011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_18

    const/16 v28, 0x0

    :goto_b
    or-int v4, v4, v28

    .line 6013
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_10

    .line 6014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_19

    const/16 v28, 0x0

    :goto_c
    or-int v4, v4, v28

    .line 6016
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1c

    .line 6017
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_d
    const/16 v28, 0x6

    move/from16 v0, v28

    if-ge v7, v0, :cond_1b

    .line 6018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    if-eqz v28, :cond_11

    .line 6019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_1a

    const/16 v28, 0x0

    :goto_e
    or-int v4, v4, v28

    .line 6017
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 5992
    :cond_12
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 5995
    .end local v7    # "i":I
    :cond_13
    const/16 v28, 0x1

    goto/16 :goto_6

    .line 5999
    :cond_14
    const/16 v28, 0x1

    goto/16 :goto_7

    .line 6002
    :cond_15
    const/16 v28, 0x1

    goto/16 :goto_8

    .line 6005
    :cond_16
    const/16 v28, 0x1

    goto/16 :goto_9

    .line 6008
    :cond_17
    const/16 v28, 0x1

    goto :goto_a

    .line 6011
    :cond_18
    const/16 v28, 0x1

    goto :goto_b

    .line 6014
    :cond_19
    const/16 v28, 0x1

    goto :goto_c

    .line 6019
    .restart local v7    # "i":I
    :cond_1a
    const/16 v28, 0x1

    goto :goto_e

    .line 6022
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    move/from16 v28, v0

    const/16 v29, -0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_1e

    const/16 v28, 0x1

    :goto_f
    or-int v4, v4, v28

    .line 6024
    .end local v7    # "i":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1d

    .line 6025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 6026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->detach()V

    .line 6027
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    .line 6033
    :cond_1d
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_20

    .line 6034
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_11
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ge v7, v0, :cond_20

    .line 6035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->reset(Z)V

    .line 6034
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 6022
    :cond_1e
    const/16 v28, 0x0

    goto :goto_f

    .line 6029
    .end local v7    # "i":I
    :cond_1f
    const/4 v4, 0x1

    .local v4, "active":Z
    goto :goto_10

    .line 6039
    .end local v4    # "active":Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_22

    .line 6040
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_12
    const/16 v28, 0x6

    move/from16 v0, v28

    if-ge v7, v0, :cond_21

    .line 6041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6042
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6040
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 6044
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6048
    .end local v7    # "i":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    if-eqz v28, :cond_23

    .line 6049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    .line 6052
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    if-eqz v28, :cond_24

    .line 6053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    .line 6056
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    if-eqz v28, :cond_25

    .line 6057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->reset(Z)V

    .line 6060
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_28

    .line 6065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v30, v0

    const/16 v28, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v29, v28

    :goto_13
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_28

    aget-object v23, v30, v29

    .line 6066
    .local v23, "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v23, :cond_27

    .line 6067
    const/16 v28, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v32, v0

    :goto_14
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_27

    aget-object v22, v23, v28

    .line 6068
    .local v22, "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v22, :cond_26

    .line 6069
    const/16 v33, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6067
    :cond_26
    add-int/lit8 v28, v28, 0x1

    goto :goto_14

    .line 6065
    .end local v22    # "speed":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_27
    add-int/lit8 v28, v29, 0x1

    move/from16 v29, v28

    goto :goto_13

    .line 6077
    .end local v23    # "speeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2a

    .line 6078
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v7, v0, :cond_2a

    .line 6079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    aget-object v5, v28, v7

    .line 6080
    .local v5, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v5, :cond_29

    .line 6081
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->reset(Z)V

    .line 6078
    :cond_29
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 6086
    .end local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v7    # "i":I
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap3(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V

    .line 6087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap3(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;Z)V

    .line 6089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v26

    .line 6090
    .local v26, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v26 .. v26}, Landroid/util/ArrayMap;->size()I

    move-result v28

    add-int/lit8 v14, v28, -0x1

    .local v14, "iw":I
    :goto_16
    if-ltz v14, :cond_2c

    .line 6091
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 6092
    .local v27, "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->reset()Z

    move-result v28

    if-eqz v28, :cond_2b

    .line 6093
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6090
    :goto_17
    add-int/lit8 v14, v14, -0x1

    goto :goto_16

    .line 6095
    :cond_2b
    const/4 v4, 0x1

    .restart local v4    # "active":Z
    goto :goto_17

    .line 6098
    .end local v4    # "active":Z
    .end local v27    # "wl":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 6099
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v24

    .line 6100
    .local v24, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->size()I

    move-result v28

    add-int/lit8 v10, v28, -0x1

    .local v10, "is":I
    :goto_18
    if-ltz v10, :cond_2e

    .line 6101
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6102
    .local v25, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_2d

    .line 6103
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6104
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6100
    :goto_19
    add-int/lit8 v10, v10, -0x1

    goto :goto_18

    .line 6106
    :cond_2d
    const/4 v4, 0x1

    .restart local v4    # "active":Z
    goto :goto_19

    .line 6109
    .end local v4    # "active":Z
    .end local v25    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 6110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v15

    .line 6111
    .local v15, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v28

    add-int/lit8 v8, v28, -0x1

    .local v8, "ij":I
    :goto_1a
    if-ltz v8, :cond_30

    .line 6112
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6113
    .restart local v25    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->reset(Z)Z

    move-result v28

    if-eqz v28, :cond_2f

    .line 6114
    invoke-virtual {v15, v8}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 6115
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6111
    :goto_1b
    add-int/lit8 v8, v8, -0x1

    goto :goto_1a

    .line 6117
    :cond_2f
    const/4 v4, 0x1

    .restart local v4    # "active":Z
    goto :goto_1b

    .line 6120
    .end local v4    # "active":Z
    .end local v25    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->cleanup()V

    .line 6121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    add-int/lit8 v11, v28, -0x1

    .local v11, "ise":I
    :goto_1c
    if-ltz v11, :cond_32

    .line 6122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 6123
    .local v20, "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->reset()Z

    move-result v28

    if-eqz v28, :cond_31

    .line 6124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->removeAt(I)V

    .line 6121
    :goto_1d
    add-int/lit8 v11, v11, -0x1

    goto :goto_1c

    .line 6126
    :cond_31
    const/4 v4, 0x1

    .restart local v4    # "active":Z
    goto :goto_1d

    .line 6129
    .end local v4    # "active":Z
    .end local v20    # "s":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    add-int/lit8 v9, v28, -0x1

    .local v9, "ip":I
    :goto_1e
    if-ltz v9, :cond_33

    .line 6130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 6131
    .local v19, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->detach()V

    .line 6129
    add-int/lit8 v9, v9, -0x1

    goto :goto_1e

    .line 6133
    .end local v19    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->clear()V

    .line 6134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    if-lez v28, :cond_35

    .line 6135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->size()I

    move-result v28

    add-int/lit8 v7, v28, -0x1

    .restart local v7    # "i":I
    :goto_1f
    if-ltz v7, :cond_35

    .line 6136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/BatteryStats$Uid$Pid;

    .line 6137
    .local v17, "pid":Landroid/os/BatteryStats$Uid$Pid;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    move/from16 v28, v0

    if-lez v28, :cond_34

    .line 6138
    const/4 v4, 0x1

    .line 6135
    :goto_20
    add-int/lit8 v7, v7, -0x1

    goto :goto_1f

    .line 6140
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_20

    .line 6144
    .end local v7    # "i":I
    .end local v17    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    if-lez v28, :cond_38

    .line 6145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 6146
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_36
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_37

    .line 6147
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    .line 6148
    .local v18, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 6149
    .local v16, "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->detach()V

    .line 6150
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->size()I

    move-result v28

    if-lez v28, :cond_36

    .line 6152
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->mServiceStats:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 6153
    .local v13, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    :goto_21
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_36

    .line 6154
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 6155
    .local v21, "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;->detach()V

    goto :goto_21

    .line 6159
    .end local v13    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;>;"
    .end local v16    # "p":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v18    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    .end local v21    # "servEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg$Serv;>;"
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/ArrayMap;->clear()V

    .line 6162
    .end local v12    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;>;"
    :cond_38
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepSystemTime:J

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mLastStepUserTime:J

    .line 6163
    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepSystemTime:J

    const-wide/16 v28, 0x0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCurStepUserTime:J

    .line 6165
    if-nez v4, :cond_4f

    .line 6166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_39

    .line 6167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6169
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3a

    .line 6170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6172
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3b

    .line 6173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6175
    :cond_3b
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_22
    const/16 v28, 0x5

    move/from16 v0, v28

    if-ge v7, v0, :cond_3d

    .line 6176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    if-eqz v28, :cond_3c

    .line 6177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6175
    :cond_3c
    add-int/lit8 v7, v7, 0x1

    goto :goto_22

    .line 6180
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3e

    .line 6181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6183
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_3f

    .line 6184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6185
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6187
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_40

    .line 6188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6189
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6191
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_41

    .line 6192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6193
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6195
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_42

    .line 6196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6197
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6199
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_43

    .line 6200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6201
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6203
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_44

    .line 6204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->detach()V

    .line 6205
    const/16 v28, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6207
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_45

    .line 6208
    const/4 v7, 0x0

    :goto_23
    const/16 v28, 0x4

    move/from16 v0, v28

    if-ge v7, v0, :cond_45

    .line 6209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->detach()V

    .line 6208
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 6212
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_46

    .line 6213
    const/4 v7, 0x0

    :goto_24
    const/16 v28, 0x6

    move/from16 v0, v28

    if-ge v7, v0, :cond_46

    .line 6214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 6215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    aget-object v28, v28, v7

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 6213
    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    .line 6219
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    if-eqz v28, :cond_47

    .line 6220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    .line 6223
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    if-eqz v28, :cond_48

    .line 6224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    .line 6227
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    if-eqz v28, :cond_49

    .line 6228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->detach()V

    .line 6231
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPids:Landroid/util/SparseArray;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/util/SparseArray;->clear()V

    .line 6233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 6234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 6235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 6237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4c

    .line 6238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v30, v0

    const/16 v28, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v29, v28

    :goto_25
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_4c

    aget-object v6, v30, v29

    .line 6239
    .local v6, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v6, :cond_4b

    .line 6240
    const/16 v28, 0x0

    array-length v0, v6

    move/from16 v32, v0

    :goto_26
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_4b

    aget-object v5, v6, v28

    .line 6241
    .restart local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v5, :cond_4a

    .line 6242
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 6240
    :cond_4a
    add-int/lit8 v28, v28, 0x1

    goto :goto_26

    .line 6238
    .end local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_4b
    add-int/lit8 v28, v29, 0x1

    move/from16 v29, v28

    goto :goto_25

    .line 6249
    .end local v6    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    if-eqz v28, :cond_4e

    .line 6250
    const/4 v7, 0x0

    :goto_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v7, v0, :cond_4e

    .line 6251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    aget-object v5, v28, v7

    .line 6252
    .restart local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v5, :cond_4d

    .line 6253
    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->detach()V

    .line 6250
    :cond_4d
    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    .line 6259
    .end local v5    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap1(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    .line 6260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/internal/os/BatteryStatsImpl;->-wrap1(Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;)V

    .line 6263
    .end local v7    # "i":I
    :cond_4f
    if-eqz v4, :cond_50

    const/16 v28, 0x0

    :goto_28
    return v28

    :cond_50
    const/16 v28, 0x1

    goto :goto_28
.end method

.method public updateUidProcessStateLocked(I)V
    .locals 7
    .param p1, "procState"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 7674
    if-ne p1, v5, :cond_0

    .line 7675
    const/4 v2, -0x1

    .line 7692
    .local v2, "uidRunningState":I
    :goto_0
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-ne v3, v2, :cond_6

    return-void

    .line 7676
    .end local v2    # "uidRunningState":I
    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 7677
    const/4 v2, 0x0

    .restart local v2    # "uidRunningState":I
    goto :goto_0

    .line 7678
    .end local v2    # "uidRunningState":I
    :cond_1
    const/4 v3, 0x4

    if-gt p1, v3, :cond_2

    .line 7680
    const/4 v2, 0x1

    .restart local v2    # "uidRunningState":I
    goto :goto_0

    .line 7681
    .end local v2    # "uidRunningState":I
    :cond_2
    const/4 v3, 0x5

    if-gt p1, v3, :cond_3

    .line 7682
    const/4 v2, 0x2

    .restart local v2    # "uidRunningState":I
    goto :goto_0

    .line 7683
    .end local v2    # "uidRunningState":I
    :cond_3
    const/4 v3, 0x6

    if-gt p1, v3, :cond_4

    .line 7685
    const/4 v2, 0x3

    .restart local v2    # "uidRunningState":I
    goto :goto_0

    .line 7686
    .end local v2    # "uidRunningState":I
    :cond_4
    const/16 v3, 0xb

    if-gt p1, v3, :cond_5

    .line 7687
    const/4 v2, 0x4

    .restart local v2    # "uidRunningState":I
    goto :goto_0

    .line 7689
    .end local v2    # "uidRunningState":I
    :cond_5
    const/4 v2, 0x5

    .restart local v2    # "uidRunningState":I
    goto :goto_0

    .line 7694
    :cond_6
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBsi:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mClocks:Lcom/android/internal/os/BatteryStatsImpl$Clocks;

    invoke-interface {v3}, Lcom/android/internal/os/BatteryStatsImpl$Clocks;->elapsedRealtime()J

    move-result-wide v0

    .line 7696
    .local v0, "elapsedRealtime":J
    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    if-eq v3, v5, :cond_7

    .line 7697
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    iget v4, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->stopRunningLocked(J)V

    .line 7699
    :cond_7
    iput v2, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessState:I

    .line 7700
    if-eq v2, v5, :cond_9

    .line 7701
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    if-nez v3, :cond_8

    .line 7702
    invoke-virtual {p0, v2, v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid;->makeProcessState(ILandroid/os/Parcel;)V

    .line 7704
    :cond_8
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->startRunningLocked(J)V

    .line 7672
    :cond_9
    return-void
.end method

.method writeToParcelLocked(Landroid/os/Parcel;J)V
    .locals 34
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "elapsedRealtimeUs"    # J

    .prologue
    .line 6267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWakelockStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v25

    .line 6268
    .local v25, "wakeStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 6269
    .local v8, "NW":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6270
    const/16 v16, 0x0

    .local v16, "iw":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v8, :cond_0

    .line 6271
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6272
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;

    .line 6273
    .local v26, "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 6270
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 6276
    .end local v26    # "wakelock":Lcom/android/internal/os/BatteryStatsImpl$Uid$Wakelock;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSyncStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v23

    .line 6277
    .local v23, "syncStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 6278
    .local v6, "NS":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6279
    const/4 v14, 0x0

    .local v14, "is":I
    :goto_1
    if-ge v14, v6, :cond_1

    .line 6280
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6281
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6282
    .local v24, "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 6279
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 6285
    .end local v24    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mJobStats:Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v17

    .line 6286
    .local v17, "jobStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 6287
    .local v4, "NJ":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6288
    const/4 v12, 0x0

    .local v12, "ij":I
    :goto_2
    if-ge v12, v4, :cond_2

    .line 6289
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6290
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    .line 6291
    .restart local v24    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-wide/from16 v2, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Timer;->writeTimerToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$Timer;J)V

    .line 6288
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 6294
    .end local v24    # "timer":Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->size()I

    move-result v7

    .line 6295
    .local v7, "NSE":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 6296
    const/4 v15, 0x0

    .local v15, "ise":I
    :goto_3
    if-ge v15, v7, :cond_3

    .line 6297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSensorStats:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;

    .line 6299
    .local v22, "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;->writeToParcelLocked(Landroid/os/Parcel;J)V

    .line 6296
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 6302
    .end local v22    # "sensor":Lcom/android/internal/os/BatteryStatsImpl$Uid$Sensor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 6303
    .local v5, "NP":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6304
    const/4 v13, 0x0

    .local v13, "ip":I
    :goto_4
    if-ge v13, v5, :cond_4

    .line 6305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStats:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 6307
    .local v21, "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->writeToParcelLocked(Landroid/os/Parcel;)V

    .line 6304
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 6310
    .end local v21    # "proc":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->size()I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mPackageStats:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "pkgEntry$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 6312
    .local v19, "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6313
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;

    .line 6314
    .local v18, "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;->writeToParcelLocked(Landroid/os/Parcel;)V

    goto :goto_5

    .line 6317
    .end local v18    # "pkg":Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;
    .end local v19    # "pkgEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/os/BatteryStatsImpl$Uid$Pkg;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    .line 6318
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRunningTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6323
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 6324
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFullWifiLockTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6329
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    .line 6330
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6335
    :goto_8
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_9
    const/16 v27, 0x5

    move/from16 v0, v27

    if-ge v11, v0, :cond_a

    .line 6336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    if-eqz v27, :cond_9

    .line 6337
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiBatchedScanTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6335
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 6321
    .end local v11    # "i":I
    :cond_6
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 6327
    :cond_7
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 6333
    :cond_8
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 6340
    .restart local v11    # "i":I
    :cond_9
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 6343
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    .line 6344
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiMulticastTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6350
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    .line 6351
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mAudioTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6356
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    .line 6357
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVideoTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6362
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    .line 6363
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mFlashlightTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6368
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    .line 6369
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCameraTurnedOnTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6374
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    .line 6375
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mForegroundActivityTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6380
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    .line 6381
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothScanTimer:Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6386
    :goto_11
    const/4 v11, 0x0

    :goto_12
    const/16 v27, 0x6

    move/from16 v0, v27

    if-ge v11, v0, :cond_13

    .line 6387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    if-eqz v27, :cond_12

    .line 6388
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mProcessStateTimer:[Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$StopwatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6386
    :goto_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 6347
    :cond_b
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 6354
    :cond_c
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_c

    .line 6360
    :cond_d
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_d

    .line 6366
    :cond_e
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_e

    .line 6372
    :cond_f
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_f

    .line 6378
    :cond_10
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_10

    .line 6384
    :cond_11
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 6391
    :cond_12
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_13

    .line 6394
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v27, v0

    if-eqz v27, :cond_14

    .line 6395
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mVibratorOnTimer:Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$BatchTimer;->writeToParcel(Landroid/os/Parcel;J)V

    .line 6400
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    .line 6401
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6402
    const/4 v11, 0x0

    :goto_15
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ge v11, v0, :cond_16

    .line 6403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$Counter;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$Counter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6402
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 6398
    :cond_14
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_14

    .line 6406
    :cond_15
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6408
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    if-eqz v27, :cond_18

    .line 6409
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6410
    const/4 v11, 0x0

    :goto_16
    const/16 v27, 0x6

    move/from16 v0, v27

    if-ge v11, v0, :cond_17

    .line 6411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkByteActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mNetworkPacketActivityCounters:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6410
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 6414
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioActiveCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6420
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v27, v0

    if-eqz v27, :cond_19

    .line 6421
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6427
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1a

    .line 6428
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mBluetoothControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6434
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 6435
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mModemControllerActivity:Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$ControllerActivityCounterImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6441
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mUserCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mSystemCpuTime:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuPower:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1f

    .line 6446
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mCpuClusterSpeed:[[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v29, v0

    const/16 v27, 0x0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v28, v27

    :goto_1b
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_20

    aget-object v10, v29, v28

    .line 6449
    .local v10, "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v10, :cond_1d

    .line 6450
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6451
    array-length v0, v10

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6452
    const/16 v27, 0x0

    array-length v0, v10

    move/from16 v31, v0

    :goto_1c
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    aget-object v9, v10, v27

    .line 6453
    .local v9, "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v9, :cond_1c

    .line 6454
    const/16 v32, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6455
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6452
    :goto_1d
    add-int/lit8 v27, v27, 0x1

    goto :goto_1c

    .line 6417
    .end local v9    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .end local v10    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_18
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_17

    .line 6424
    :cond_19
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_18

    .line 6431
    :cond_1a
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_19

    .line 6438
    :cond_1b
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1a

    .line 6457
    .restart local v9    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    .restart local v10    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1c
    const/16 v32, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 6461
    .end local v9    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1d
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6448
    :cond_1e
    add-int/lit8 v27, v28, 0x1

    move/from16 v28, v27

    goto :goto_1b

    .line 6465
    .end local v10    # "cpuSpeeds":[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_1f
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6468
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    if-eqz v27, :cond_22

    .line 6469
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6471
    const/4 v11, 0x0

    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_23

    .line 6472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mGpuSpeedBins:[Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    aget-object v9, v27, v11

    .line 6473
    .restart local v9    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    if-eqz v9, :cond_21

    .line 6474
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6475
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6471
    :goto_1f
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    .line 6477
    :cond_21
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 6481
    .end local v9    # "c":Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;
    :cond_22
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6485
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    if-eqz v27, :cond_24

    .line 6486
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mMobileRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6492
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    if-eqz v27, :cond_25

    .line 6493
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl$Uid;->mWifiRadioApWakeupCount:Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounter;->writeToParcel(Landroid/os/Parcel;)V

    .line 6266
    :goto_21
    return-void

    .line 6489
    :cond_24
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 6496
    :cond_25
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21
.end method
