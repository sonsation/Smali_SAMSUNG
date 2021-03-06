.class public Lcom/android/settingslib/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/BatteryInfo$BatteryDataParser;,
        Lcom/android/settingslib/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public batteryPercentString:Ljava/lang/String;

.field public mBatteryLevel:I

.field public mChargeLabelString:Ljava/lang/String;

.field private mCharging:Z

.field public mDischarging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/String;

.field public remainingTimeUs:J

.field private timePeriod:J


# direct methods
.method static synthetic -get0(Lcom/android/settingslib/BatteryInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settingslib/BatteryInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/settingslib/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/BatteryInfo;->mDischarging:Z

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    .line 37
    return-void
.end method

.method private static formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v2, "sb":Ljava/lang/StringBuilder;
    long-to-double v4, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 126
    .local v3, "seconds":I
    add-int/lit8 v3, v3, 0x1e

    .line 128
    const/4 v0, 0x0

    .local v0, "hours":I
    const/4 v1, 0x0

    .line 129
    .local v1, "minutes":I
    const/16 v4, 0xe10

    if-lt v3, v4, :cond_0

    .line 130
    div-int/lit16 v0, v3, 0xe10

    .line 131
    mul-int/lit16 v4, v0, 0xe10

    sub-int/2addr v3, v4

    .line 133
    :cond_0
    const/16 v4, 0x3c

    if-lt v3, v4, :cond_1

    .line 134
    div-int/lit8 v1, v3, 0x3c

    .line 135
    mul-int/lit8 v4, v1, 0x3c

    sub-int/2addr v3, v4

    .line 137
    :cond_1
    if-lez v0, :cond_2

    .line 138
    sget v4, Lcom/android/settingslib/R$string;->battery_history_hours_no_seconds:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 139
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    .line 138
    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 141
    :cond_2
    sget v4, Lcom/android/settingslib/R$string;->battery_history_minutes_no_seconds:I

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/settingslib/BatteryInfo;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "elapsedRealtimeUs"    # J

    .prologue
    .line 219
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 218
    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settingslib/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settingslib/BatteryInfo;
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batteryBroadcast"    # Landroid/content/Intent;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "elapsedRealtimeUs"    # J
    .param p5, "shortString"    # Z

    .prologue
    .line 224
    new-instance v5, Lcom/android/settingslib/BatteryInfo;

    invoke-direct {v5}, Lcom/android/settingslib/BatteryInfo;-><init>()V

    .line 225
    .local v5, "info":Lcom/android/settingslib/BatteryInfo;
    move-object/from16 v0, p2

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    .line 226
    invoke-static/range {p1 .. p1}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v20

    move/from16 v0, v20

    iput v0, v5, Lcom/android/settingslib/BatteryInfo;->mBatteryLevel:I

    .line 227
    iget v0, v5, Lcom/android/settingslib/BatteryInfo;->mBatteryLevel:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 228
    const-string/jumbo v20, "plugged"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_1

    const/16 v20, 0x1

    :goto_0
    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    .line 229
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 233
    .local v16, "resources":Landroid/content/res/Resources;
    iget-boolean v0, v5, Lcom/android/settingslib/BatteryInfo;->mCharging:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 234
    const/16 v4, 0x23

    .line 235
    .local v4, "BATT_REMAINING_TIME_FOR_PERF_MODE":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "low_power"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 236
    .local v13, "powerSaving":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string/jumbo v21, "sem_perfomance_mode"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    if-eqz v20, :cond_2

    const/4 v10, 0x1

    .line 237
    .local v10, "isPerfMode":Z
    :goto_1
    if-eqz v10, :cond_0

    if-nez v13, :cond_0

    .line 238
    const/16 v13, 0x23

    .line 240
    :cond_0
    const-string/jumbo v20, "CustomFrequencyManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/CustomFrequencyManager;

    .line 241
    .local v11, "mCustomFreqManager":Landroid/os/CustomFrequencyManager;
    invoke-virtual {v11, v13}, Landroid/os/CustomFrequencyManager;->getBatteryRemainingUsageTime(I)I

    move-result v14

    .line 243
    .local v14, "remainingMin":I
    sget-object v20, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v0, v14

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v8

    .line 244
    .local v8, "drainTime":J
    if-lez v14, :cond_3

    .line 245
    iput-wide v8, v5, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    .line 246
    const-wide/16 v20, 0x3e8

    div-long v20, v8, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/BatteryInfo;->formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 247
    .local v19, "timeString":Ljava/lang/String;
    const-string/jumbo v20, "BatteryInfo"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "getTimeString. time = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " timeString "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget v20, Lcom/android/settingslib/R$string;->battery_discharging_duration:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v19, v21, v22

    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    .line 290
    .end local v4    # "BATT_REMAINING_TIME_FOR_PERF_MODE":I
    .end local v8    # "drainTime":J
    .end local v10    # "isPerfMode":Z
    .end local v11    # "mCustomFreqManager":Landroid/os/CustomFrequencyManager;
    .end local v13    # "powerSaving":I
    .end local v14    # "remainingMin":I
    .end local v19    # "timeString":Ljava/lang/String;
    :goto_2
    return-object v5

    .line 228
    .end local v16    # "resources":Landroid/content/res/Resources;
    :cond_1
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 236
    .restart local v4    # "BATT_REMAINING_TIME_FOR_PERF_MODE":I
    .restart local v13    # "powerSaving":I
    .restart local v16    # "resources":Landroid/content/res/Resources;
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 250
    .restart local v8    # "drainTime":J
    .restart local v10    # "isPerfMode":Z
    .restart local v11    # "mCustomFreqManager":Landroid/os/CustomFrequencyManager;
    .restart local v14    # "remainingMin":I
    :cond_3
    iget-object v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    goto :goto_2

    .line 253
    .end local v4    # "BATT_REMAINING_TIME_FOR_PERF_MODE":I
    .end local v8    # "drainTime":J
    .end local v10    # "isPerfMode":Z
    .end local v11    # "mCustomFreqManager":Landroid/os/CustomFrequencyManager;
    .end local v13    # "powerSaving":I
    .end local v14    # "remainingMin":I
    :cond_4
    invoke-virtual/range {p2 .. p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v6

    .line 254
    .local v6, "chargeTime":J
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;Z)Ljava/lang/String;

    move-result-object v18

    .line 256
    .local v18, "statusLabel":Ljava/lang/String;
    const-string/jumbo v20, "status"

    .line 257
    const/16 v21, 0x1

    .line 256
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 258
    .local v17, "status":I
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-lez v20, :cond_c

    const/16 v20, 0x5

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    .line 259
    const/16 v20, 0x0

    move/from16 v0, v20

    iput-boolean v0, v5, Lcom/android/settingslib/BatteryInfo;->mDischarging:Z

    .line 260
    iput-wide v6, v5, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    .line 263
    const-wide/16 v20, 0x3e8

    div-long v20, v6, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/BatteryInfo;->formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v19

    .line 264
    .restart local v19    # "timeString":Ljava/lang/String;
    const-string/jumbo v20, "plugged"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 266
    .local v12, "plugType":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_6

    .line 267
    if-eqz p5, :cond_5

    sget v15, Lcom/android/settingslib/R$string;->power_charging_duration_ac_short:I

    .line 279
    .local v15, "resId":I
    :goto_3
    sget v20, Lcom/android/settingslib/R$string;->power_remaining_duration_only:I

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 280
    const/16 v22, 0x0

    aput-object v19, v21, v22

    .line 279
    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 281
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 282
    iget-object v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v21, v20, v22

    const/16 v21, 0x1

    aput-object v19, v20, v21

    .line 281
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_2

    .line 268
    .end local v15    # "resId":I
    :cond_5
    sget v15, Lcom/android/settingslib/R$string;->power_charging_duration_ac:I

    .restart local v15    # "resId":I
    goto :goto_3

    .line 269
    .end local v15    # "resId":I
    :cond_6
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v12, v0, :cond_8

    .line 270
    if-eqz p5, :cond_7

    sget v15, Lcom/android/settingslib/R$string;->power_charging_duration_usb_short:I

    .restart local v15    # "resId":I
    goto :goto_3

    .line 271
    .end local v15    # "resId":I
    :cond_7
    sget v15, Lcom/android/settingslib/R$string;->power_charging_duration_usb:I

    .restart local v15    # "resId":I
    goto :goto_3

    .line 272
    .end local v15    # "resId":I
    :cond_8
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v12, v0, :cond_a

    .line 273
    if-eqz p5, :cond_9

    sget v15, Lcom/android/settingslib/R$string;->power_charging_duration_wireless_short:I

    .restart local v15    # "resId":I
    goto :goto_3

    .line 274
    .end local v15    # "resId":I
    :cond_9
    sget v15, Lcom/android/settingslib/R$string;->power_charging_duration_wireless:I

    .restart local v15    # "resId":I
    goto :goto_3

    .line 276
    .end local v15    # "resId":I
    :cond_a
    if-eqz p5, :cond_b

    sget v15, Lcom/android/settingslib/R$string;->power_charging_duration_short:I

    .restart local v15    # "resId":I
    goto :goto_3

    .line 277
    .end local v15    # "resId":I
    :cond_b
    sget v15, Lcom/android/settingslib/R$string;->power_charging_duration:I

    .restart local v15    # "resId":I
    goto :goto_3

    .line 284
    .end local v12    # "plugType":I
    .end local v15    # "resId":I
    .end local v19    # "timeString":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->remainingLabel:Ljava/lang/String;

    .line 286
    sget v20, Lcom/android/settingslib/R$string;->power_charging:I

    .line 285
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    .line 286
    iget-object v0, v5, Lcom/android/settingslib/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v22, v21, v23

    const/16 v22, 0x1

    aput-object v18, v21, v22

    .line 285
    move-object/from16 v0, v16

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/android/settingslib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settingslib/BatteryInfo$Callback;

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;Z)V

    .line 190
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settingslib/BatteryInfo$Callback;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/android/settingslib/BatteryInfo$Callback;
    .param p2, "shortString"    # Z

    .prologue
    .line 196
    new-instance v0, Lcom/android/settingslib/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settingslib/BatteryInfo$2;-><init>(Landroid/content/Context;ZLcom/android/settingslib/BatteryInfo$Callback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/BatteryInfo$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 195
    return-void
.end method

.method private static varargs parse(Landroid/os/BatteryStats;J[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V
    .locals 37
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "remainingTimeUs"    # J
    .param p3, "parsers"    # [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    .prologue
    .line 305
    const-wide/16 v28, 0x0

    .line 306
    .local v28, "startWalltime":J
    const-wide/16 v8, 0x0

    .line 307
    .local v8, "endDateWalltime":J
    const-wide/16 v10, 0x0

    .line 308
    .local v10, "endWalltime":J
    const-wide/16 v14, 0x0

    .line 309
    .local v14, "historyStart":J
    const-wide/16 v12, 0x0

    .line 310
    .local v12, "historyEnd":J
    const/16 v19, -0x1

    .line 305
    .local v19, "lastLevel":B
    const-wide/16 v6, 0x0

    .line 312
    .local v6, "curWalltime":J
    const-wide/16 v22, 0x0

    .line 313
    .local v22, "lastWallTime":J
    const-wide/16 v20, 0x0

    .line 314
    .local v20, "lastRealtime":J
    const/16 v18, 0x0

    .line 315
    .local v18, "lastInteresting":I
    const/16 v26, 0x0

    .line 316
    .local v26, "pos":I
    const/4 v5, 0x1

    .line 317
    .local v5, "first":Z
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 318
    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 319
    .end local v19    # "lastLevel":B
    .local v27, "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 320
    add-int/lit8 v26, v26, 0x1

    .line 321
    if-eqz v5, :cond_1

    .line 322
    const/4 v5, 0x0

    .line 323
    move-object/from16 v0, v27

    iget-wide v14, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 325
    :cond_1
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    .line 326
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 335
    :cond_2
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    const-wide v34, 0x39ef8b000L

    add-long v34, v34, v22

    cmp-long v32, v32, v34

    if-gtz v32, :cond_3

    .line 336
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    const-wide/32 v34, 0x493e0

    add-long v34, v34, v14

    cmp-long v32, v32, v34

    if-gez v32, :cond_4

    .line 337
    :cond_3
    const-wide/16 v28, 0x0

    .line 339
    :cond_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v22, v0

    .line 340
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 341
    const-wide/16 v32, 0x0

    cmp-long v32, v28, v32

    if-nez v32, :cond_5

    .line 342
    sub-long v32, v20, v14

    sub-long v28, v22, v32

    .line 345
    :cond_5
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_0

    .line 346
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v32, 0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 347
    :cond_6
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v19, v0

    .line 349
    :cond_7
    move/from16 v18, v26

    .line 350
    move-object/from16 v0, v27

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    goto/16 :goto_0

    .line 354
    .end local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 355
    add-long v32, v22, v12

    sub-long v8, v32, v20

    .line 356
    const-wide/16 v32, 0x3e8

    div-long v32, p1, v32

    add-long v10, v8, v32

    .line 358
    const/16 v16, 0x0

    .line 359
    .local v16, "i":I
    move/from16 v4, v18

    .line 361
    .local v4, "N":I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_1
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_9

    .line 362
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v28

    invoke-interface {v0, v1, v2, v10, v11}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    .line 361
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 364
    :cond_9
    cmp-long v32, v8, v28

    if-lez v32, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v32

    if-eqz v32, :cond_11

    .line 365
    new-instance v27, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 366
    .restart local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v32

    if-eqz v32, :cond_11

    move/from16 v0, v16

    if-ge v0, v4, :cond_11

    .line 367
    invoke-virtual/range {v27 .. v27}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v32

    if-eqz v32, :cond_b

    .line 368
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v20

    add-long v6, v6, v32

    .line 369
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 370
    sub-long v30, v6, v28

    .line 371
    .local v30, "x":J
    const-wide/16 v32, 0x0

    cmp-long v32, v30, v32

    if-gez v32, :cond_a

    .line 372
    const-wide/16 v30, 0x0

    .line 374
    :cond_a
    const/16 v17, 0x0

    :goto_3
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 375
    aget-object v32, p3, v17

    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    .line 374
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 378
    .end local v30    # "x":J
    :cond_b
    move-wide/from16 v24, v6

    .line 379
    .local v24, "lastWalltime":J
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_c

    .line 380
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x7

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 381
    :cond_c
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-wide/from16 v32, v0

    cmp-long v32, v32, v28

    if-ltz v32, :cond_f

    .line 382
    move-object/from16 v0, v27

    iget-wide v6, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 386
    :goto_4
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 389
    :cond_d
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_10

    .line 390
    move-object/from16 v0, v27

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v32, v0

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_e

    .line 391
    sub-long v32, v24, v6

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->abs(J)J

    move-result-wide v32

    const-wide/32 v34, 0x36ee80

    cmp-long v32, v32, v34

    if-lez v32, :cond_10

    .line 392
    :cond_e
    const/16 v17, 0x0

    :goto_5
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_10

    .line 393
    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onDataGap()V

    .line 392
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 384
    :cond_f
    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v32, v0

    sub-long v32, v32, v14

    add-long v6, v28, v32

    goto :goto_4

    .line 397
    .end local v24    # "lastWalltime":J
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 401
    .end local v27    # "rec":Landroid/os/BatteryStats$HistoryItem;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 403
    const/16 v17, 0x0

    :goto_6
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_12

    .line 404
    aget-object v32, p3, v17

    invoke-interface/range {v32 .. v32}, Lcom/android/settingslib/BatteryInfo$BatteryDataParser;->onParsingDone()V

    .line 403
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 304
    :cond_12
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V
    .locals 12
    .param p1, "view"    # Lcom/android/settingslib/graph/UsageView;
    .param p2, "parsers"    # [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    .prologue
    .line 59
    new-instance v2, Lcom/android/settingslib/BatteryInfo$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settingslib/BatteryInfo$1;-><init>(Lcom/android/settingslib/BatteryInfo;Lcom/android/settingslib/graph/UsageView;)V

    .line 90
    .local v2, "parser":Lcom/android/settingslib/BatteryInfo$BatteryDataParser;
    array-length v6, p2

    add-int/lit8 v6, v6, 0x1

    new-array v3, v6, [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    .line 91
    .local v3, "parserList":[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p2

    if-ge v1, v6, :cond_0

    .line 92
    aget-object v6, p2, v1

    aput-object v6, v3, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_0
    array-length v6, p2

    aput-object v2, v3, v6

    .line 95
    iget-object v6, p0, Lcom/android/settingslib/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    invoke-static {v6, v8, v9, v3}, Lcom/android/settingslib/BatteryInfo;->parse(Landroid/os/BatteryStats;J[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V

    .line 96
    invoke-virtual {p1}, Lcom/android/settingslib/graph/UsageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 102
    .local v0, "context":Landroid/content/Context;
    sget v6, Lcom/android/settingslib/R$string;->charge_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->timePeriod:J

    invoke-static {v0, v8, v9}, Lcom/android/settingslib/BatteryInfo;->formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "timeString":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 104
    .local v4, "remaining":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 109
    sget v6, Lcom/android/settingslib/R$string;->remaining_length_format:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/android/settingslib/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v0, v8, v9}, Lcom/android/settingslib/BatteryInfo;->formatElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 111
    :cond_1
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 112
    const/16 v7, 0x32

    invoke-static {v7}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 113
    const/16 v7, 0x64

    invoke-static {v7}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    .line 111
    invoke-virtual {p1, v6}, Lcom/android/settingslib/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 115
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {p1, v6}, Lcom/android/settingslib/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method
