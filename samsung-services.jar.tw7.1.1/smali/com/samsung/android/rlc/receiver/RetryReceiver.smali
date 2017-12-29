.class public Lcom/samsung/android/rlc/receiver/RetryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RetryReceiver.java"


# static fields
.field public static final ACTION_CHECK_DEVICE_STATUS_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

.field public static final ACTION_COMPLETE_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.COMPLETE_RETRY"

.field public static final ACTION_DELIVERY_REQUEST_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

.field public static final ACTION_GCM_MG_REGISTRATION_REQUEST_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

.field public static final ACTION_GCM_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

.field public static final ACTION_PREPARE_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.PREPARE_RETRY"

.field public static final ACTION_REPORT_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.REPORT_RETRY"

.field public static final ACTION_SPP_MG_REGISTRATION_REQUEST_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

.field public static final ACTION_SPP_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

.field public static final ACTION_THEFT_PROTECTION_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.THEFT_PROTECTION_RETRY"

.field public static final ACTION_UNLOCK_REPORT_RETRY:Ljava/lang/String; = "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    if-nez v20, :cond_1

    .line 39
    :cond_0
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "intent or intent.getAction() is null"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 43
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/MUMUtils;->isOwnner(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 44
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "Action ignored because FMM just support in the case of master account"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 47
    :cond_2
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.THEFT_PROTECTION_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 50
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "ACTION_THEFT_PROTECTION_RETRY"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0xf

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 37
    :cond_3
    :goto_0
    return-void

    .line 53
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.GCM_REGISTRATION_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.GCM_MG_REGISTRATION_REQUEST_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 55
    :cond_5
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "ACTION_GCM_RETRY"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 58
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.SPP_REGISTRATION_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.SPP_MG_REGISTRATION_REQUEST_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 60
    :cond_7
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "ACTION_SPP_RETRY"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0x4

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 63
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 65
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "ACTION_CHECK_DEVICE_STATUS_RETRY"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 68
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.DELIVERY_REQUEST_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 70
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "ACTION_DELIVERY_REQUEST_RETRY"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 73
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.PREPARE_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 75
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "ACTION_PREPARE_RETRY"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0x9

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 78
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.COMPLETE_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 80
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "ACTION_COMPLETE_RETRY"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0xa

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 83
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.REPORT_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 85
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "ACTION_REPORT_RETRY"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0xb

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 87
    :cond_d
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.UNLOCK_REPORT_RETRY"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 88
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "ACTION_UNLOCKREPORT_RETRY"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    const/16 v21, 0x8

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 90
    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.SECOND_CHECK_DEVICE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.THIRD_CHECK_DEVICE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 92
    :cond_f
    :try_start_0
    const-string v20, "retryInterval1"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 93
    .local v11, "intervalPref1":Ljava/lang/String;
    const-string v20, "retryInterval2"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 94
    .local v16, "intervalPref2":Ljava/lang/String;
    const-wide/16 v12, -0x1

    .line 95
    .local v12, "interval1":J
    const-wide/16 v14, -0x1

    .line 96
    .local v14, "interval2":J
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 97
    const-wide/32 v12, 0xf731400

    .line 101
    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 102
    const-wide/32 v14, 0x240c8400

    .line 108
    :goto_2
    const-string v20, "alarm"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 109
    .local v4, "am":Landroid/app/AlarmManager;
    new-instance v6, Landroid/content/Intent;

    const-string v20, "com.samsung.android.rlc.CHECK_DEVICE_STATUS_RETRY"

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v6, "checkIntent":Landroid/content/Intent;
    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v17

    .line 111
    .local v17, "pending":Landroid/app/PendingIntent;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    const-string v21, "com.samsung.android.rlc.SECOND_CHECK_DEVICE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 114
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v20

    const-string v21, "2rd"

    const-string v22, "Y"

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v18, Landroid/content/Intent;

    const-string v20, "com.samsung.android.rlc.THIRD_CHECK_DEVICE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v18, "thirdIntent":Landroid/content/Intent;
    const/16 v20, 0x0

    const/high16 v21, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v18

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v19

    .line 117
    .local v19, "thirdPending":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v22

    const-string v23, "bootTime"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    sub-long v20, v20, v22

    sub-long v8, v14, v20

    .line 118
    .local v8, "checkTime":J
    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-lez v20, :cond_12

    .line 119
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "Set third check alarm"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    add-long v20, v20, v8

    const/16 v22, 0x3

    move/from16 v0, v22

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 127
    .end local v8    # "checkTime":J
    .end local v18    # "thirdIntent":Landroid/content/Intent;
    .end local v19    # "thirdPending":Landroid/app/PendingIntent;
    :goto_3
    new-instance v10, Landroid/content/Intent;

    const-string v20, "com.samsung.android.rmm.initialize"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v10, "initIntent":Landroid/content/Intent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v20, "oprtType"

    const-string v21, "4"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v10, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 131
    const-string v20, "com.samsung.android.permission.RMM_INIT"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 132
    .end local v4    # "am":Landroid/app/AlarmManager;
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "checkIntent":Landroid/content/Intent;
    .end local v10    # "initIntent":Landroid/content/Intent;
    .end local v11    # "intervalPref1":Ljava/lang/String;
    .end local v12    # "interval1":J
    .end local v14    # "interval2":J
    .end local v16    # "intervalPref2":Ljava/lang/String;
    .end local v17    # "pending":Landroid/app/PendingIntent;
    :catch_0
    move-exception v7

    .line 133
    .local v7, "e":Ljava/lang/Exception;
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Exception : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 99
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "intervalPref1":Ljava/lang/String;
    .restart local v12    # "interval1":J
    .restart local v14    # "interval2":J
    .restart local v16    # "intervalPref2":Ljava/lang/String;
    :cond_10
    :try_start_1
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    goto/16 :goto_1

    .line 104
    :cond_11
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    goto/16 :goto_2

    .line 122
    .restart local v4    # "am":Landroid/app/AlarmManager;
    .restart local v6    # "checkIntent":Landroid/content/Intent;
    .restart local v8    # "checkTime":J
    .restart local v17    # "pending":Landroid/app/PendingIntent;
    .restart local v18    # "thirdIntent":Landroid/content/Intent;
    .restart local v19    # "thirdPending":Landroid/app/PendingIntent;
    :cond_12
    sget-object v20, Lcom/samsung/android/rlc/receiver/RetryReceiver;->TAG:Ljava/lang/String;

    const-string v21, "Time expired"

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 125
    .end local v8    # "checkTime":J
    .end local v18    # "thirdIntent":Landroid/content/Intent;
    .end local v19    # "thirdPending":Landroid/app/PendingIntent;
    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v20

    const-string v21, "3rd"

    const-string v22, "Y"

    invoke-virtual/range {v20 .. v22}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
