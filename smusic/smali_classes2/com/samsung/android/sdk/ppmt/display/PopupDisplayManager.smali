.class public Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;
.super Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
.source "PopupDisplayManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static mCurrentDisplayID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->mCurrentDisplayID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;-><init>()V

    return-void
.end method

.method private delayDisplayNotToDisturb(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "resultHandler"    # Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    .prologue
    .line 67
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v6

    .line 68
    .local v6, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v6, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardRetryCount(Ljava/lang/String;)I

    move-result v7

    .line 70
    .local v7, "retryCount":I
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardRetryCount(Ljava/lang/String;I)Z

    .line 71
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 73
    const/4 v0, 0x5

    if-lt v7, v0, :cond_1

    .line 74
    sget-object v0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to display. currently busy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->BUSY:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 87
    .end local v7    # "retryCount":I
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v7    # "retryCount":I
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "mid"

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "targetid"

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->getTargetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "is_first_display"

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->isFirstDisplay()Z

    move-result v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x1b7740

    add-long/2addr v2, v8

    const-string v4, "display"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static getCurrentDisplayID()I
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->mCurrentDisplayID:I

    return v0
.end method

.method private isSupportType(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    .line 115
    if-lt p1, v0, :cond_0

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCurrentDisplayID(I)V
    .locals 0
    .param p0, "displayId"    # I

    .prologue
    .line 107
    sput p0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->mCurrentDisplayID:I

    .line 108
    return-void
.end method


# virtual methods
.method public clear(Landroid/content/Context;I)Z
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    sget v5, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->mCurrentDisplayID:I

    if-ne v5, p2, :cond_0

    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v5, 0x44000000    # 512.0f

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    const-string v5, "extra_clear"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v3, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 97
    .local v2, "pi":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pi":Landroid/app/PendingIntent;
    :cond_0
    move v3, v4

    .line 103
    :goto_0
    return v3

    .line 98
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "pi":Landroid/app/PendingIntent;
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to clear:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public display(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/os/Bundle;
    .param p3, "resultHandler"    # Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x0

    .line 25
    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 26
    if-nez p2, :cond_1

    .line 27
    sget-object v6, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    const-string v7, "fail to display. data null"

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, v6, v10}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const-string v6, "mid"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "mid":Ljava/lang/String;
    const-string/jumbo v6, "template_type"

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 34
    .local v5, "type":I
    invoke-direct {p0, v5}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->isSupportType(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 35
    sget-object v6, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] not supported type. type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, v6, v10}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    const-string v6, "disturb"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 41
    .local v2, "isDisturbOn":Z
    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->isScreenOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 42
    sget-object v6, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] delay display alarm not to disturb"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->delayDisplayNotToDisturb(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V

    goto :goto_0

    .line 47
    :cond_3
    sget v6, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->mCurrentDisplayID:I

    if-eq v6, v7, :cond_4

    .line 48
    sget v6, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->mCurrentDisplayID:I

    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->clear(Landroid/content/Context;I)Z

    .line 51
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v6, 0x44000000    # 512.0f

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    const-string v6, "extra_popup"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 54
    const-string v6, "extra_is_first_display"

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->isFirstDisplay()Z

    move-result v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    const-string v6, "extra_ttlto"

    invoke-virtual {p3}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->getTtlTo()J

    move-result-wide v8

    invoke-virtual {v1, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 58
    .local v4, "pi":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to display. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, v6, v10}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->onFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
