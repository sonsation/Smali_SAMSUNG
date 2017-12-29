.class public Lcom/samsung/android/rlc/util/RMMSupportCheck;
.super Ljava/lang/Object;
.source "RMMSupportCheck.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/rlc/util/RMMSupportCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setChangedTime(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    const-string v11, "bootTime"

    invoke-virtual {v10, v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "boot":Ljava/lang/String;
    const-string v10, "boot_time"

    invoke-static {p0, v10}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "bootInPref":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 127
    .local v6, "currentTime":J
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "bootTime":Ljava/lang/String;
    sget-object v10, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "There is no boot Time : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    const-string v11, "bootTime"

    invoke-virtual {v10, v11, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .end local v2    # "bootTime":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 133
    const-string v10, "boot_time"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_1
    const-string v10, "boot_time"

    invoke-static {p0, v10}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 136
    sub-long v10, v6, v10

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 136
    sub-long v8, v10, v12

    .line 139
    .local v8, "timeGap":J
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    add-long v4, v10, v8

    .line 141
    .local v4, "changedTime":J
    sget-object v10, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Init boot time was changed : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v10, "boot_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v12, v6, v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v10

    const-string v11, "bootTime"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v0    # "boot":Ljava/lang/String;
    .end local v1    # "bootInPref":Ljava/lang/String;
    .end local v4    # "changedTime":J
    .end local v6    # "currentTime":J
    .end local v8    # "timeGap":J
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCheckAlarm(Landroid/content/Context;)V
    .locals 38
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v35, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    const-string v36, "Set SecondCheck Alarm"

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 23
    .local v12, "currentTime":J
    const-string v35, "alarm"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 24
    .local v4, "am":Landroid/app/AlarmManager;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/PushUtil;->getPushTypeList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v24

    .line 26
    .local v24, "pushTypeList":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v22, v0

    .local v22, "len":I
    :goto_0
    move/from16 v0, v22

    if-ge v14, v0, :cond_1

    .line 27
    aget-object v35, v24, v14

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->isMGRegistered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 28
    sget-object v35, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Rmm Service already activated : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void

    .line 26
    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 33
    :cond_1
    const-string v35, "retryInterval1"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 34
    .local v20, "intervalPref1":Ljava/lang/String;
    const-string v35, "retryInterval2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 35
    .local v21, "intervalPref2":Ljava/lang/String;
    const-wide/16 v16, -0x1

    .line 36
    .local v16, "interval1":J
    const-wide/16 v18, -0x1

    .line 37
    .local v18, "interval2":J
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_2

    .line 38
    const-wide/32 v16, 0xf731400

    .line 39
    const-string v35, "retryInterval1"

    const-wide/32 v36, 0xf731400

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :goto_1
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 45
    const-wide/32 v18, 0x240c8400

    .line 46
    const-string v35, "retryInterval2"

    const-wide/32 v36, 0x240c8400

    invoke-static/range {v36 .. v37}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_2
    const-wide/16 v36, -0x1

    cmp-long v35, v16, v36

    if-nez v35, :cond_5

    .line 52
    const-wide/16 v36, -0x1

    cmp-long v35, v18, v36

    if-nez v35, :cond_4

    .line 53
    sget-object v35, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    const-string v36, "Invalid interval, so skip retry checking"

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .line 41
    :cond_2
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    goto :goto_1

    .line 48
    :cond_3
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    goto :goto_2

    .line 56
    :cond_4
    move-wide/from16 v16, v18

    .line 57
    const-string v35, "retryInterval1"

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_5
    new-instance v8, Landroid/content/Intent;

    const-string v35, "com.samsung.android.rlc.SECOND_CHECK_DEVICE"

    move-object/from16 v0, v35

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v8, "checkIntent":Landroid/content/Intent;
    const/16 v35, 0x0

    const/high16 v36, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 63
    .local v23, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 64
    new-instance v8, Landroid/content/Intent;

    .end local v8    # "checkIntent":Landroid/content/Intent;
    const-string v35, "com.samsung.android.rlc.THIRD_CHECK_DEVICE"

    move-object/from16 v0, v35

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .restart local v8    # "checkIntent":Landroid/content/Intent;
    const/16 v35, 0x0

    const/high16 v36, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v0, v1, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 66
    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 68
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v35

    const-string v36, "bootTime"

    invoke-virtual/range {v35 .. v36}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "boot":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_6

    .line 70
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "bootTime":Ljava/lang/String;
    sget-object v35, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "There is no boot Time : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v35

    const-string v36, "bootTime"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    move-object v5, v6

    .line 76
    .end local v6    # "bootTime":Ljava/lang/String;
    :cond_6
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v36

    sub-long v10, v12, v36

    .line 77
    .local v10, "checkTime":J
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v35

    const-string v36, "2rd"

    invoke-virtual/range {v35 .. v36}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 78
    .local v25, "secondCheck":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v35

    const-string v36, "3rd"

    invoke-virtual/range {v35 .. v36}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 79
    .local v32, "thirdCheck":Ljava/lang/String;
    sget-object v35, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "CheckTime: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", Check Flag : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ","

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    cmp-long v35, v10, v16

    if-gez v35, :cond_8

    .line 81
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 82
    sub-long v26, v16, v10

    .line 83
    .local v26, "secCheckTime":J
    sget-object v35, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "set three day check alarm : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ","

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v28, Landroid/content/Intent;

    const-string v35, "com.samsung.android.rlc.SECOND_CHECK_DEVICE"

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v28, "secondIntent":Landroid/content/Intent;
    const/16 v35, 0x0

    const/high16 v36, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v28

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 86
    .local v29, "secondPending":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    add-long v36, v36, v26

    const/16 v35, 0x3

    move/from16 v0, v35

    move-wide/from16 v1, v36

    move-object/from16 v3, v29

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 19
    .end local v4    # "am":Landroid/app/AlarmManager;
    .end local v5    # "boot":Ljava/lang/String;
    .end local v8    # "checkIntent":Landroid/content/Intent;
    .end local v10    # "checkTime":J
    .end local v12    # "currentTime":J
    .end local v14    # "i":I
    .end local v16    # "interval1":J
    .end local v18    # "interval2":J
    .end local v20    # "intervalPref1":Ljava/lang/String;
    .end local v21    # "intervalPref2":Ljava/lang/String;
    .end local v22    # "len":I
    .end local v23    # "pending":Landroid/app/PendingIntent;
    .end local v24    # "pushTypeList":[Ljava/lang/String;
    .end local v25    # "secondCheck":Ljava/lang/String;
    .end local v26    # "secCheckTime":J
    .end local v28    # "secondIntent":Landroid/content/Intent;
    .end local v29    # "secondPending":Landroid/app/PendingIntent;
    .end local v32    # "thirdCheck":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    .line 88
    .restart local v4    # "am":Landroid/app/AlarmManager;
    .restart local v5    # "boot":Ljava/lang/String;
    .restart local v8    # "checkIntent":Landroid/content/Intent;
    .restart local v10    # "checkTime":J
    .restart local v12    # "currentTime":J
    .restart local v14    # "i":I
    .restart local v16    # "interval1":J
    .restart local v18    # "interval2":J
    .restart local v20    # "intervalPref1":Ljava/lang/String;
    .restart local v21    # "intervalPref2":Ljava/lang/String;
    .restart local v22    # "len":I
    .restart local v23    # "pending":Landroid/app/PendingIntent;
    .restart local v24    # "pushTypeList":[Ljava/lang/String;
    .restart local v25    # "secondCheck":Ljava/lang/String;
    .restart local v32    # "thirdCheck":Ljava/lang/String;
    :cond_8
    cmp-long v35, v16, v10

    if-gtz v35, :cond_a

    cmp-long v35, v10, v18

    if-gez v35, :cond_a

    .line 89
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-nez v35, :cond_9

    const-string v35, "Y"

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_9

    .line 98
    :goto_4
    sub-long v30, v18, v10

    .line 99
    .local v30, "thirCheckTime":J
    sget-object v35, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "set seven day check alarm : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, ", "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v33, Landroid/content/Intent;

    const-string v35, "com.samsung.android.rlc.THIRD_CHECK_DEVICE"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v33, "thirdIntent":Landroid/content/Intent;
    const/16 v35, 0x0

    const/high16 v36, 0x8000000

    move-object/from16 v0, p0

    move/from16 v1, v35

    move-object/from16 v2, v33

    move/from16 v3, v36

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v34

    .line 102
    .local v34, "thirdPending":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v36

    add-long v36, v36, v30

    const/16 v35, 0x3

    move/from16 v0, v35

    move-wide/from16 v1, v36

    move-object/from16 v3, v34

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 115
    .end local v4    # "am":Landroid/app/AlarmManager;
    .end local v5    # "boot":Ljava/lang/String;
    .end local v8    # "checkIntent":Landroid/content/Intent;
    .end local v10    # "checkTime":J
    .end local v12    # "currentTime":J
    .end local v14    # "i":I
    .end local v16    # "interval1":J
    .end local v18    # "interval2":J
    .end local v20    # "intervalPref1":Ljava/lang/String;
    .end local v21    # "intervalPref2":Ljava/lang/String;
    .end local v22    # "len":I
    .end local v23    # "pending":Landroid/app/PendingIntent;
    .end local v24    # "pushTypeList":[Ljava/lang/String;
    .end local v25    # "secondCheck":Ljava/lang/String;
    .end local v30    # "thirCheckTime":J
    .end local v32    # "thirdCheck":Ljava/lang/String;
    .end local v33    # "thirdIntent":Landroid/content/Intent;
    .end local v34    # "thirdPending":Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    .line 116
    .local v9, "e":Ljava/lang/Exception;
    sget-object v35, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Exception : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 90
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v4    # "am":Landroid/app/AlarmManager;
    .restart local v5    # "boot":Ljava/lang/String;
    .restart local v8    # "checkIntent":Landroid/content/Intent;
    .restart local v10    # "checkTime":J
    .restart local v12    # "currentTime":J
    .restart local v14    # "i":I
    .restart local v16    # "interval1":J
    .restart local v18    # "interval2":J
    .restart local v20    # "intervalPref1":Ljava/lang/String;
    .restart local v21    # "intervalPref2":Ljava/lang/String;
    .restart local v22    # "len":I
    .restart local v23    # "pending":Landroid/app/PendingIntent;
    .restart local v24    # "pushTypeList":[Ljava/lang/String;
    .restart local v25    # "secondCheck":Ljava/lang/String;
    .restart local v32    # "thirdCheck":Ljava/lang/String;
    :cond_9
    :try_start_1
    sget-object v35, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Second Check Flag : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v35

    const-string v36, "2rd"

    const-string v37, "Y"

    invoke-virtual/range {v35 .. v37}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v15, Landroid/content/Intent;

    const-string v35, "com.samsung.android.rmm.initialize"

    move-object/from16 v0, v35

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v15, "initIntent":Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 94
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v35, "oprtType"

    const-string v36, "4"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v15, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 96
    const-string v35, "com.samsung.android.permission.RMM_INIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 105
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v15    # "initIntent":Landroid/content/Intent;
    :cond_a
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 106
    sget-object v35, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    const-string v36, "Start third check "

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v15, Landroid/content/Intent;

    const-string v35, "com.samsung.android.rmm.initialize"

    move-object/from16 v0, v35

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .restart local v15    # "initIntent":Landroid/content/Intent;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 109
    .restart local v7    # "bundle":Landroid/os/Bundle;
    const-string v35, "oprtType"

    const-string v36, "4"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v15, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    const-string v35, "com.samsung.android.permission.RMM_INIT"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v15, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 112
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v35

    const-string v36, "3rd"

    const-string v37, "Y"

    invoke-virtual/range {v35 .. v37}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static setRetryChangedTime(Landroid/content/Context;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    const/16 v17, 0x8

    :try_start_0
    move/from16 v0, v17

    new-array v13, v0, [I

    .line 152
    const/16 v17, 0xa

    .line 160
    const/16 v18, 0x0

    aput v17, v13, v18

    .line 153
    const/16 v17, 0xb

    .line 160
    const/16 v18, 0x1

    aput v17, v13, v18

    .line 154
    const/16 v17, 0xc

    .line 160
    const/16 v18, 0x2

    aput v17, v13, v18

    .line 155
    const/16 v17, 0xd

    .line 160
    const/16 v18, 0x3

    aput v17, v13, v18

    .line 156
    const/16 v17, 0xe

    .line 160
    const/16 v18, 0x4

    aput v17, v13, v18

    .line 157
    const/16 v17, 0xf

    .line 160
    const/16 v18, 0x5

    aput v17, v13, v18

    .line 158
    const/16 v17, 0x10

    .line 160
    const/16 v18, 0x6

    aput v17, v13, v18

    .line 159
    const/16 v17, 0x11

    .line 160
    const/16 v18, 0x7

    aput v17, v13, v18

    .line 162
    .local v13, "retryTypes":[I
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v17

    const-string v18, "bootTime"

    invoke-virtual/range {v17 .. v18}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "boot":Ljava/lang/String;
    const-string v17, "boot_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "bootInPref":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 166
    .local v10, "currentTime":J
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "bootTime":Ljava/lang/String;
    sget-object v17, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "There is no boot Time : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v17

    const-string v18, "bootTime"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v6    # "bootTime":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 172
    const-string v17, "boot_time"

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1
    const-string v17, "boot_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 175
    sub-long v18, v10, v18

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 175
    sub-long v14, v18, v20

    .line 178
    .local v14, "timeGap":J
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    add-long v8, v18, v14

    .line 180
    .local v8, "changedTime":J
    const/16 v17, 0x0

    array-length v0, v13

    move/from16 v18, v0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    aget v16, v13, v17

    .line 181
    .local v16, "type":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "retry_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 182
    .local v12, "retryTime":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 183
    sget-object v19, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Retry Time Change : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "retry_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 185
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    add-long v20, v20, v14

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v20

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 188
    .end local v12    # "retryTime":Ljava/lang/String;
    .end local v16    # "type":I
    :cond_3
    const-string v17, "boot_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v18, v10, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v17

    const-string v18, "bootTime"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v4    # "boot":Ljava/lang/String;
    .end local v5    # "bootInPref":Ljava/lang/String;
    .end local v8    # "changedTime":J
    .end local v10    # "currentTime":J
    .end local v13    # "retryTypes":[I
    .end local v14    # "timeGap":J
    :goto_1
    return-void

    .line 190
    :catch_0
    move-exception v7

    .line 191
    .local v7, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/samsung/android/rlc/util/RMMSupportCheck;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
