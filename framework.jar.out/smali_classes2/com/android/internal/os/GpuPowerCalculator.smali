.class public Lcom/android/internal/os/GpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "GpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "GpuPowerCalculator"


# instance fields
.field private final mPowerGpuNormal:[D

.field private final mSpeedStepTimes:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .locals 6
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/os/PowerProfile;->getNumGpuSpeedSteps()I

    move-result v1

    .line 38
    .local v1, "speedSteps":I
    const-string/jumbo v2, "GpuPowerCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "speedSteps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-array v2, v1, [D

    iput-object v2, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    .line 40
    new-array v2, v1, [J

    iput-object v2, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    .line 41
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 42
    iget-object v2, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    const-string/jumbo v3, "gpu.active"

    invoke-virtual {p1, v3, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 43
    const-string/jumbo v2, "GpuPowerCalculator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "GpuPowerCalculator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    aget-wide v4, v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 14
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    .prologue
    .line 50
    iget-object v10, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    array-length v6, v10

    .line 52
    .local v6, "speedSteps":I
    const-wide/16 v8, 0x0

    .line 53
    .local v8, "totalTimeAtSpeeds":J
    const/4 v7, 0x0

    .local v7, "step":I
    :goto_0
    if-ge v7, v6, :cond_0

    .line 54
    iget-object v10, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v7, v1}, Landroid/os/BatteryStats$Uid;->getTimeAtGpuSpeed(II)J

    move-result-wide v12

    aput-wide v12, v10, v7

    .line 55
    iget-object v10, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    aget-wide v10, v10, v7

    add-long/2addr v8, v10

    .line 53
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 57
    :cond_0
    const-wide/16 v10, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 59
    const-wide/16 v2, 0x0

    .line 60
    .local v2, "gpuPowerMaMs":D
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    .line 62
    iget-object v10, p0, Lcom/android/internal/os/GpuPowerCalculator;->mSpeedStepTimes:[J

    aget-wide v10, v10, v7

    long-to-double v10, v10

    iget-object v12, p0, Lcom/android/internal/os/GpuPowerCalculator;->mPowerGpuNormal:[D

    aget-wide v12, v12, v7

    mul-double v4, v10, v12

    .line 63
    .local v4, "gpuSpeedStepPower":D
    const-wide/16 v10, 0x0

    cmpl-double v10, v4, v10

    if-eqz v10, :cond_1

    .line 64
    const-string/jumbo v10, "GpuPowerCalculator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": GPU step #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " power="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 65
    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double v12, v4, v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v12

    .line 64
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    add-double/2addr v2, v4

    .line 60
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 70
    .end local v4    # "gpuSpeedStepPower":D
    :cond_2
    const-wide/16 v10, 0x0

    cmpl-double v10, v2, v10

    if-eqz v10, :cond_3

    .line 71
    const-string/jumbo v10, "GpuPowerCalculator"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": gpu total power="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 72
    const-wide v12, 0x414b774000000000L    # 3600000.0

    div-double v12, v2, v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v12

    .line 71
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3
    const-wide v10, 0x414b774000000000L    # 3600000.0

    div-double v10, v2, v10

    iput-wide v10, p1, Lcom/android/internal/os/BatterySipper;->gpuPowerMah:D

    .line 49
    return-void
.end method
