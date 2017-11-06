.class public Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;
.super Ljava/lang/Object;
.source "DisplayResultHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsFirstDisplay:Z

.field private mMid:Ljava/lang/String;

.field private mTargetId:Ljava/lang/String;

.field private mTtlTo:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "targetId"    # Ljava/lang/String;
    .param p3, "ttlTo"    # J
    .param p5, "isFirstDisplay"    # Z

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mMid:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mTargetId:Ljava/lang/String;

    .line 34
    iput-wide p3, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mTtlTo:J

    .line 35
    iput-boolean p5, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mIsFirstDisplay:Z

    .line 36
    return-void
.end method

.method public static handleDisplayResult(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 14
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "resultData"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    .line 93
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 94
    const-string v9, "display_result"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "resultState":Ljava/lang/String;
    const-string v9, "mid"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "mid":Ljava/lang/String;
    const-string/jumbo v9, "targetid"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 98
    .local v5, "targetid":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 99
    sget-object v9, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    const-string v10, "fail to handle display result. mid null"

    invoke-static {v9, v10}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .end local v3    # "mid":Ljava/lang/String;
    .end local v4    # "resultState":Ljava/lang/String;
    .end local v5    # "targetid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local v3    # "mid":Ljava/lang/String;
    .restart local v4    # "resultState":Ljava/lang/String;
    .restart local v5    # "targetid":Ljava/lang/String;
    :cond_1
    const-string v9, "display_success"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 104
    const-string/jumbo v9, "ttl"

    invoke-virtual {p1, v9, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 105
    .local v6, "ttlTo":J
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 106
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v0, :cond_0

    .line 107
    sget-object v9, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, v3, v9}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardState(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 108
    sget-object v9, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v3, v5, v9, v10}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v3, v10, v11}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardDisplayedTime(Ljava/lang/String;J)Z

    .line 110
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 111
    cmp-long v9, v6, v12

    if-eqz v9, :cond_0

    .line 112
    invoke-static {p0, v6, v7, v3, v5}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->setAlarmForDismissCard(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    .end local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .end local v6    # "ttlTo":J
    :cond_2
    const-string v9, "display_fail"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 116
    const-string v9, "feedback_event"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->fromInt(I)Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    move-result-object v1

    .line 118
    .local v1, "feedbackEvent":Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    const-string/jumbo v9, "userfeedback"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 119
    .local v8, "userFeedbackValue":Ljava/lang/String;
    invoke-static {p0, v3, v5, v1, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v1    # "feedbackEvent":Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .end local v8    # "userFeedbackValue":Ljava/lang/String;
    :cond_3
    const-string v9, "gone_no_reaction"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 121
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToGone(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    sget-object v9, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v3, v5, v9, v10}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_4
    const-string v9, "fail_but_retry"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 124
    const-string v9, "is_first_display"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 125
    .local v2, "isFirstDisplay":Z
    invoke-static {p0, v3, v5, v2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->handleFailButRetryEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static handleFailButRetryEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "targetid"    # Ljava/lang/String;
    .param p3, "isFirstDisplay"    # Z

    .prologue
    .line 144
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    .line 145
    .local v1, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v1, :cond_1

    .line 146
    sget-object v4, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to retry display. dbHandler null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardRetryCount(Ljava/lang/String;)I

    move-result v3

    .line 151
    .local v3, "retryCount":I
    const/4 v4, 0x5

    if-lt v3, v4, :cond_3

    .line 152
    sget-object v4, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to retry display. over retry count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    if-eqz p3, :cond_2

    .line 154
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v5, "C1009"

    invoke-static {p0, p1, p2, v4, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 159
    :cond_3
    add-int/lit8 v4, v3, 0x1

    :try_start_1
    invoke-virtual {v1, p1, v4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardRetryCount(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 165
    :try_start_2
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCard(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v0

    .line 166
    .local v0, "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    invoke-virtual {v0, p0, p3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setAlarmForRetryDisplay(Landroid/content/Context;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 167
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to retry display. internal error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    if-eqz p3, :cond_0

    .line 170
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v5, 0x0

    invoke-static {p0, p1, p2, v4, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "retryCount":I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v4
.end method

.method private static setAlarmForDismissCard(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "ttlTo"    # J
    .param p3, "mid"    # Ljava/lang/String;
    .param p4, "targetId"    # Ljava/lang/String;

    .prologue
    .line 131
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 132
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 134
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "mid"

    invoke-virtual {v5, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "targetid"

    invoke-virtual {v5, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card_dismiss_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "dismiss"

    move-object v0, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    .line 141
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mMid:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mTargetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTtlTo()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mTtlTo:J

    return-wide v0
.end method

.method public isFirstDisplay()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mIsFirstDisplay:Z

    return v0
.end method

.method public onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "feedback"    # Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .param p3, "userFeedbackValue"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mIsFirstDisplay:Z

    if-eqz v1, :cond_0

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v1, "extra_action"

    const-string v2, "handle_display_result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v1, "display_result"

    const-string v2, "display_fail"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "mid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v1, "targetid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mTargetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v1, "feedback_event"

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "userfeedback"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onFailButRetry(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v1, "extra_action"

    const-string v2, "handle_display_result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "display_result"

    const-string v2, "fail_but_retry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v1, "mid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string/jumbo v1, "targetid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mTargetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "is_first_display"

    iget-boolean v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mIsFirstDisplay:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method public onSuccess(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 55
    iget-boolean v1, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mIsFirstDisplay:Z

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "extra_action"

    const-string v2, "handle_display_result"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "display_result"

    const-string v2, "display_success"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "mid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v1, "targetid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mTargetId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string/jumbo v1, "ttl"

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->mTtlTo:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
