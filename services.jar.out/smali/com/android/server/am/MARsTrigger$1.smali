.class Lcom/android/server/am/MARsTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/MARsTrigger;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 383
    :cond_0
    sget-object v10, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 382
    if-eqz v10, :cond_6

    .line 384
    :cond_1
    const-string/jumbo v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 385
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 388
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 389
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->clearStorageDiff()V

    .line 390
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->clearNotificationDiff()V

    .line 391
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->updateTrafficStat()V

    .line 398
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 399
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v11, "FIRST_ALARM_APPLOCKER"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v12, v12, Lcom/android/server/am/MARsTrigger;->mAppLockerPolicyInterval:J

    invoke-static {v10, v11, v12, v13}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    .line 402
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 404
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v11, "FIRST_ALARM_AUTORUN_TRAFFIC_STAT"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v12, v12, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v14, v14, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    sub-long/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    .line 379
    :cond_4
    :goto_1
    return-void

    .line 393
    :cond_5
    sget-object v10, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 394
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto :goto_0

    .line 407
    :cond_6
    const-string/jumbo v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 408
    sget-object v10, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 407
    if-eqz v10, :cond_10

    .line 409
    :cond_7
    const-string/jumbo v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 410
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->getLCDonKillEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get10(Lcom/android/server/am/MARsTrigger;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 411
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mHandler:Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;

    new-instance v11, Lcom/android/server/am/MARsTrigger$1$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/android/server/am/MARsTrigger$1$1;-><init>(Lcom/android/server/am/MARsTrigger$1;)V

    .line 421
    const-wide/16 v12, 0x3e8

    .line 411
    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/am/MARsTrigger$MARsTriggerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 427
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 428
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->clearNotificationUpdate()V

    .line 429
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->clearStorageDiff()V

    .line 430
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->clearNotificationDiff()V

    .line 438
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get4(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 439
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v11}, Lcom/android/server/am/MARsTrigger;->-get4(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 441
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get5(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 442
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v11}, Lcom/android/server/am/MARsTrigger;->-get5(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 444
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get6(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 445
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v11}, Lcom/android/server/am/MARsTrigger;->-get6(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 447
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get8(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 448
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v11}, Lcom/android/server/am/MARsTrigger;->-get8(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 450
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get7(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    if-eqz v10, :cond_e

    .line 451
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v11}, Lcom/android/server/am/MARsTrigger;->-get7(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 453
    :cond_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get9(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 454
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v11}, Lcom/android/server/am/MARsTrigger;->-get9(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 434
    :cond_f
    sget-object v10, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 435
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto/16 :goto_2

    .line 456
    :cond_10
    const-string/jumbo v10, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 459
    .local v3, "extras":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 460
    .local v6, "onCreate":Z
    const/4 v7, 0x0

    .line 461
    .local v7, "onUpgrade":Z
    if-eqz v3, :cond_12

    .line 462
    const-string/jumbo v10, "MARS_EXTRA"

    const-string/jumbo v11, ""

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 463
    .local v9, "tmp":Ljava/lang/String;
    const-string/jumbo v10, "create"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 464
    const/4 v6, 0x1

    .line 465
    :cond_11
    const-string/jumbo v10, "update"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 466
    const/4 v7, 0x1

    .line 469
    .end local v9    # "tmp":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v10, v10, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v10, v6, v7}, Lcom/android/server/am/MARsDBManager;->requestFillInDB(ZZ)V

    goto/16 :goto_1

    .line 471
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v6    # "onCreate":Z
    .end local v7    # "onUpgrade":Z
    :cond_13
    const-string/jumbo v10, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 472
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->setDataConnectionConnected()V

    goto/16 :goto_1

    .line 474
    :cond_14
    const-string/jumbo v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 475
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->getLCDonKillEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 476
    const-string/jumbo v10, "plugged"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 477
    .local v8, "plugged":I
    if-nez v8, :cond_4

    .line 479
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v10, v10, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v10}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 481
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get1(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v10

    sub-long v10, v4, v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v12, v12, Lcom/android/server/am/MARsTrigger;->mLCDOnTriggerTimeInterval:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 482
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10, v4, v5}, Lcom/android/server/am/MARsTrigger;->-set0(Lcom/android/server/am/MARsTrigger;J)J

    .line 483
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v12, "com.android.server.am.ACTION_UI_SET_ARES"

    invoke-static {v11, v12}, Lcom/android/server/am/MARsTrigger;->-wrap2(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v10, v12, v11}, Lcom/android/server/am/MARsTrigger;->-wrap4(Lcom/android/server/am/MARsTrigger;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 487
    .end local v4    # "currentTime":J
    :cond_15
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/server/am/MARsTrigger;->-set3(Lcom/android/server/am/MARsTrigger;Z)Z

    goto/16 :goto_1
.end method
