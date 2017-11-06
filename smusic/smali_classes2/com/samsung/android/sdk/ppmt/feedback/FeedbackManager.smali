.class public Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "targetid"    # Ljava/lang/String;
    .param p3, "fbid"    # Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .param p4, "fv"    # Ljava/lang/String;

    .prologue
    .line 30
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ==== << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " >> ===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 32
    :cond_0
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    const-string v5, "fail to add feedback. invalid params"

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    .line 36
    .local v1, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v1, :cond_2

    .line 37
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to add feedback. dbHandler null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardTargetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "curTargetid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 44
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to add feedback. targetid changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 48
    :cond_3
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getLastFbid(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    move-result-object v2

    .line 49
    .local v2, "lastFbid":Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    invoke-virtual {p3, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 50
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] the feedback is already added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto/16 :goto_0

    .line 54
    :cond_4
    :try_start_2
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {v4, v2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {v4, p3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 55
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to add click/ignore feedback after click feedback"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto/16 :goto_0

    .line 59
    :cond_5
    :try_start_3
    invoke-virtual {v1, p1, p3, p4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->addFeedbackData(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)Z

    move-result v3

    .line 60
    .local v3, "succeed":Z
    if-eqz v3, :cond_6

    .line 61
    const/4 v4, 0x0

    invoke-static {p0, p1, p2, v4}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->setFeedbackAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :cond_6
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto/16 :goto_0

    .end local v0    # "curTargetid":Ljava/lang/String;
    .end local v2    # "lastFbid":Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .end local v3    # "succeed":Z
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v4
.end method

.method public static handleSendFeedbackFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "targetid"    # Ljava/lang/String;
    .param p3, "resultCode"    # I

    .prologue
    .line 133
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] Send Feedback Fail - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 136
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v0, :cond_2

    .line 137
    const/16 v6, 0x1f4

    if-lt p3, v6, :cond_0

    const/16 v6, 0x258

    if-lt p3, v6, :cond_1

    :cond_0
    const/16 v6, 0x3ea

    if-eq p3, v6, :cond_1

    const/16 v6, 0x3eb

    if-eq p3, v6, :cond_1

    const/16 v6, 0x3f2

    if-eq p3, v6, :cond_1

    const/16 v6, 0x3f6

    if-eq p3, v6, :cond_1

    const/16 v6, 0x44c

    if-ne p3, v6, :cond_4

    .line 144
    :cond_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackTryCount(Ljava/lang/String;)I

    move-result v1

    .line 145
    .local v1, "tryCount":I
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->setFeedbackTryCount(Ljava/lang/String;I)Z

    .line 147
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getLastFeedbackTime(Ljava/lang/String;)J

    move-result-wide v4

    .line 148
    .local v4, "lastFeedbackTime":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    .line 149
    const-wide/32 v6, 0x240c8400

    add-long v2, v4, v6

    .line 150
    .local v2, "expiredTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_3

    .line 151
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] feedback is expired"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v6, "discard"

    invoke-virtual {v0, p1, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->setFeedbackState(Ljava/lang/String;Ljava/lang/String;)Z

    .line 153
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 164
    .end local v1    # "tryCount":I
    .end local v2    # "expiredTime":J
    .end local v4    # "lastFeedbackTime":J
    :cond_2
    :goto_0
    return-void

    .line 157
    .restart local v1    # "tryCount":I
    .restart local v4    # "lastFeedbackTime":J
    :cond_3
    const/4 v6, 0x1

    invoke-static {p0, p1, p2, v6}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->setFeedbackAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    .end local v1    # "tryCount":I
    .end local v4    # "lastFeedbackTime":J
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 160
    :cond_4
    const-string v6, "discard"

    invoke-virtual {v0, p1, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->setFeedbackState(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method public static handleSendFeedbackSuccess(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "fbids"    # Lorg/json/JSONArray;

    .prologue
    .line 123
    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Send Feedback Success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 125
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->deleteFbids(Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->setFeedbackTryCount(Ljava/lang/String;I)Z

    .line 128
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 130
    :cond_0
    return-void
.end method

.method public static requestIncompleteEvents(Landroid/content/Context;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 167
    if-nez p0, :cond_0

    .line 168
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    const-string v7, "fail to request incomplete events. ctx null."

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 172
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_1

    .line 173
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    const-string v7, "fail to request incomplete events. dbHandler null."

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_1
    const-string/jumbo v6, "wait"

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getAllFeedback(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 177
    .local v4, "mids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v4, :cond_2

    .line 178
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    const-string v7, "fail to request incomplete events. DB Error"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    .local v3, "mid":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getFeedbackFbids(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 184
    .local v1, "fbids":Lorg/json/JSONArray;
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardTargetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, "targetid":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 186
    const/4 v6, 0x0

    invoke-static {p0, v3, v5, v6}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->setFeedbackAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 189
    .end local v1    # "fbids":Lorg/json/JSONArray;
    .end local v3    # "mid":Ljava/lang/String;
    .end local v5    # "targetid":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0
.end method

.method public static sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "targetid"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->getFeedback(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    move-result-object v1

    .line 99
    .local v1, "feedback":Lcom/samsung/android/sdk/ppmt/feedback/Feedback;
    if-eqz v1, :cond_0

    .line 100
    const-string/jumbo v4, "wait"

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->getState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 101
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] doesn\'t need to send feedback. state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->getState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v1    # "feedback":Lcom/samsung/android/sdk/ppmt/feedback/Feedback;
    :cond_0
    :goto_0
    return-void

    .line 104
    .restart local v1    # "feedback":Lcom/samsung/android/sdk/ppmt/feedback/Feedback;
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->getFbids()Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->getFbids()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 105
    :cond_2
    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] there is no feedback data to send"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1    # "feedback":Lcom/samsung/android/sdk/ppmt/feedback/Feedback;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
    const/4 v4, 0x1

    invoke-static {p0, p1, p2, v4}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->setFeedbackAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 109
    .end local v0    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
    .restart local v1    # "feedback":Lcom/samsung/android/sdk/ppmt/feedback/Feedback;
    :cond_3
    :try_start_1
    new-instance v2, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/Feedback;)V

    .line 110
    .local v2, "feedbackRequest":Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;
    const/16 v4, 0x3c

    invoke-static {p0, v2, v4}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v3

    .line 111
    .local v3, "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    iget-boolean v4, v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->isSuccess:Z

    if-eqz v4, :cond_4

    .line 112
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->getFbids()Lorg/json/JSONArray;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->handleSendFeedbackSuccess(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 114
    :cond_4
    iget v4, v3, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    invoke-static {p0, p1, p2, v4}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->handleSendFeedbackFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static setFeedbackAlarm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "targetid"    # Ljava/lang/String;
    .param p3, "isRetry"    # Z

    .prologue
    .line 69
    if-nez p3, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->isTestMsg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v6, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v6, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.sdk.ppmt.SERVICE_EVENTS"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v0, "extra_action"

    const-string/jumbo v1, "send_feedback"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v0, "mid"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string/jumbo v0, "targetid"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 80
    .local v2, "feedbackTime":J
    if-nez p3, :cond_1

    .line 81
    const-wide/32 v0, 0x493e0

    const-wide/32 v8, 0x1b7740

    invoke-static {v0, v1, v8, v9}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getRandomMillis(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 88
    :goto_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "mid"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string/jumbo v0, "targetid"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fbtimer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "send_feedback"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 84
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-wide/32 v0, 0x36ee80

    const-wide/32 v8, 0x6ddd00

    invoke-static {v0, v1, v8, v9}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getRandomMillis(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    goto :goto_1
.end method
