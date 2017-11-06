.class public Lcom/samsung/android/sdk/ppmt/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# static fields
.field private static final DEREG_SEND_EVENT_ID:Ljava/lang/String; = "dereg_send_event"

.field public static final IS_RETRY:Ljava/lang/String; = "is_retry"

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final RETRY_TERM_MINUTES:J = 0x3L

.field private static final SEND_DELAY_SECOND:J = 0x3L

.field private static final TAG:Ljava/lang/String;

.field private static final TRACKING_DATA_SEND_EVENT_ID:Ljava/lang/String; = "tracking_data_send_event"

.field private static final UPDATED_DATA_SEND_EVENT_ID:Ljava/lang/String; = "updated_data_send_event"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/sdk/ppmt/data/DataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDataRetryAlarm(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    const-string/jumbo v0, "updated_data_send_event"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->cancelEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "tracking_data_send_event"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->cancelEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    const-string v0, "dereg_send_event"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->cancelEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static deleteData(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "extra_action"

    const-string v2, "delete_dereg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 149
    return-void
.end method

.method public static deleteDataNSendDereg(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.SERVICE_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v1, "extra_action"

    const-string/jumbo v2, "send_dereg"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 143
    return-void
.end method

.method public static initRetryCountAndAlarm(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_1
    return-void

    .line 163
    :sswitch_0
    const-string/jumbo v1, "send_updated_data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "send_collected_data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "send_dereg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 165
    :pswitch_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->removeUpdatedDataRetryCount()V

    .line 166
    const-string/jumbo v0, "updated_data_send_event"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->cancelEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :pswitch_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->removeCumulativeDataRetryCount()V

    .line 170
    const-string/jumbo v0, "tracking_data_send_event"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->cancelEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 173
    :pswitch_2
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->removeDeregRetryCount()V

    .line 174
    const-string v0, "dereg_send_event"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->cancelEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x307b3cfc -> :sswitch_2
        0x3adb2077 -> :sswitch_1
        0x782e1c05 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static requestSendCumulativeData(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->requestSendCumulativeData(Landroid/content/Context;J)V

    .line 119
    return-void
.end method

.method private static requestSendCumulativeData(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 126
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v6

    .line 127
    .local v6, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->isTncAgreed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string/jumbo v1, "tracking_data_send_event"

    const-string/jumbo v4, "send_collected_data"

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static requestSendImmCumulativeData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->requestSendCumulativeData(Landroid/content/Context;J)V

    .line 123
    return-void
.end method

.method public static requestSendImmRegData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->requestSendRegData(Landroid/content/Context;J)V

    .line 102
    return-void
.end method

.method public static requestSendRegData(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->requestSendRegData(Landroid/content/Context;J)V

    .line 98
    return-void
.end method

.method private static requestSendRegData(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # J

    .prologue
    .line 105
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v6

    .line 106
    .local v6, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->isTncAgreed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string/jumbo v1, "updated_data_send_event"

    const-string/jumbo v4, "send_updated_data"

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static retryCumulativeDataSend(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRetry"    # Z

    .prologue
    const/4 v3, 0x3

    .line 180
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getCumulativeDataRetryCount()I

    move-result v6

    .line 181
    .local v6, "retryCount":I
    if-eqz p1, :cond_0

    .line 182
    add-int/lit8 v6, v6, 0x1

    .line 183
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setCumulativeDataRetryCount(I)V

    .line 184
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cumulative data sending Retry count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    if-lt v6, v3, :cond_1

    .line 186
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send_collected_data Retry count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". retry count is max count(MAX_RETRY_COUNT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->removeCumulativeDataRetryCount()V

    .line 193
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 194
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "is_retry"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 196
    const-string/jumbo v1, "tracking_data_send_event"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x2bf20

    add-long/2addr v2, v8

    const-string/jumbo v4, "send_collected_data"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static retryDeregSend(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRetry"    # Z

    .prologue
    const/4 v3, 0x3

    .line 220
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeregRetryCount()I

    move-result v6

    .line 221
    .local v6, "retryCount":I
    if-eqz p1, :cond_0

    .line 222
    add-int/lit8 v6, v6, 0x1

    .line 223
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setDeregRetryCount(I)V

    .line 224
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dereg retry count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    if-lt v6, v3, :cond_1

    .line 226
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". retry count is max count(MAX_RETRY_COUNT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->removeDeregRetryCount()V

    .line 233
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 234
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "is_retry"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 236
    const-string v1, "dereg_send_event"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x2bf20

    add-long/2addr v2, v8

    const-string/jumbo v4, "send_dereg"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static retryUpdatedDataSend(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isRetry"    # Z

    .prologue
    const/4 v3, 0x3

    .line 200
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getUpdatedDataRetryCount()I

    move-result v6

    .line 201
    .local v6, "retryCount":I
    if-eqz p1, :cond_0

    .line 202
    add-int/lit8 v6, v6, 0x1

    .line 203
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setUpdatedDataRetryCount(I)V

    .line 204
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Retry count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    if-lt v6, v3, :cond_1

    .line 206
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/DataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". retry count is max count(MAX_RETRY_COUNT:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->removeUpdatedDataRetryCount()V

    .line 213
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "is_retry"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    const-string/jumbo v1, "updated_data_send_event"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x2bf20

    add-long/2addr v2, v8

    const-string/jumbo v4, "send_updated_data"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static save(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/PpmtIap;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/samsung/android/sdk/ppmt/PpmtIap;

    .prologue
    .line 55
    const-string v0, "iap"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/PpmtIap;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->saveCumulativeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static save(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/PpmtLocation;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/samsung/android/sdk/ppmt/PpmtLocation;

    .prologue
    .line 50
    const-string v0, "lo"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/PpmtLocation;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->saveCumulativeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method static save(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appUsageData"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    const-string v0, "app"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->saveCumulativeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private static saveCumulativeData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "extra_action"

    const-string v2, "add_cumulative_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "cumulative_data_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "cumulative_data_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 46
    return-void
.end method

.method public static saveNSendBasicData(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v1, "extra_action"

    const-string/jumbo v2, "upsert_basic_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string/jumbo v1, "send_imm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 85
    return-void
.end method

.method public static saveNSendCustomData(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/PpmtData;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lcom/samsung/android/sdk/ppmt/PpmtData;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v1, "extra_action"

    const-string/jumbo v2, "upsert_custom_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v1, "updated_data"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/PpmtData;->getData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 69
    return-void
.end method

.method public static saveNSendDAU(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "extra_action"

    const-string/jumbo v2, "upsert_dau"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "dau_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 93
    return-void
.end method

.method public static saveNSendImmBasicData(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v1, "extra_action"

    const-string/jumbo v2, "upsert_basic_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string/jumbo v1, "send_imm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 77
    return-void
.end method

.method public static sendDereg(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setDeregSendDone(Z)V

    .line 152
    const-string v1, "dereg_send_event"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "send_dereg"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    .line 153
    return-void
.end method
