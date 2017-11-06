.class public Lcom/samsung/android/sdk/ppmt/PpmtDataService;
.super Landroid/app/IntentService;
.source "PpmtDataService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "PpmtDataService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    .line 22
    if-nez p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 25
    :cond_1
    const-string v11, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 26
    const-string v11, "extra_action"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    const-string v11, "handle_push"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 29
    const-string v11, "appdata"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "appData":Ljava/lang/String;
    const-string v11, "push_type"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "pushType":Ljava/lang/String;
    invoke-static {p0, v1, v6}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->handlePushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 32
    .end local v1    # "appData":Ljava/lang/String;
    .end local v6    # "pushType":Ljava/lang/String;
    :cond_2
    const-string v11, "handle_incomplete_events"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 33
    const-string v11, "boot_comp"

    invoke-virtual {p1, v11, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 34
    .local v4, "isBootCompleted":Z
    invoke-static {p0, v4}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->requestIncompleteEvents(Landroid/content/Context;Z)V

    .line 35
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->requestIncompleteEvents(Landroid/content/Context;)V

    goto :goto_0

    .line 36
    .end local v4    # "isBootCompleted":Z
    :cond_3
    const-string v11, "handle_app_update"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 37
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/CardManager;->handleUpdateEvent(Landroid/content/Context;)V

    goto :goto_0

    .line 38
    :cond_4
    const-string v11, "add_cumulative_data"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 39
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->addCumulativeData(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 40
    :cond_5
    const-string/jumbo v11, "upsert_custom_data"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 41
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->upsertCustomData(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 42
    :cond_6
    const-string/jumbo v11, "upsert_basic_data"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 43
    const-string/jumbo v11, "send_imm"

    invoke-virtual {p1, v11, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 44
    .local v7, "sendImmediate":Z
    invoke-static {p0, v7}, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->upsertBasicData(Landroid/content/Context;Z)V

    goto :goto_0

    .line 45
    .end local v7    # "sendImmediate":Z
    :cond_7
    const-string/jumbo v11, "upsert_dau"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 46
    const-string v11, "dau_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {p1, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 47
    .local v8, "startTs":J
    invoke-static {p0, v8, v9}, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->upsertDAUData(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 48
    .end local v8    # "startTs":J
    :cond_8
    const-string/jumbo v11, "send_dereg"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 49
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->deleteDbData(Landroid/content/Context;)V

    .line 50
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->sendDereg(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 51
    :cond_9
    const-string v11, "delete_dereg"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 52
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataHandler;->deleteDbData(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 53
    :cond_a
    const-string v11, "custom_fb"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 54
    const-string v11, "mid"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "mid":Ljava/lang/String;
    const-string v11, "event"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "event":Ljava/lang/String;
    const/4 v10, 0x0

    .line 57
    .local v10, "targetid":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v2

    .line 58
    .local v2, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v2, :cond_b

    .line 59
    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardTargetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 60
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 62
    :cond_b
    sget-object v11, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v5, v10, v11, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
