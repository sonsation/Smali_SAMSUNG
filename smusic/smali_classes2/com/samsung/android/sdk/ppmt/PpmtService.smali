.class public Lcom/samsung/android/sdk/ppmt/PpmtService;
.super Landroid/app/IntentService;
.source "PpmtService.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/PpmtService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "PpmtService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method private onHandleCardEvent(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 64
    const-string v7, "mid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 65
    .local v5, "mid":Ljava/lang/String;
    const-string/jumbo v7, "targetid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "targetid":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v2

    .line 68
    .local v2, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v2, :cond_1

    .line 69
    sget-object v7, Lcom/samsung/android/sdk/ppmt/PpmtService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] fail to handle event. dbHandler null"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {v2, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardState(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v1

    .line 73
    .local v1, "cardState":Lcom/samsung/android/sdk/ppmt/content/CardState;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 75
    sget-object v7, Lcom/samsung/android/sdk/ppmt/content/CardState;->CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v7, v1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    sget-object v7, Lcom/samsung/android/sdk/ppmt/PpmtService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] the card is canceled. ignore this event"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_2
    :try_start_0
    invoke-static {p0, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCard(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v0

    .line 81
    .local v0, "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    const-string/jumbo v7, "req_cancel_status"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->requestCancelApi(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 91
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
    sget-object v7, Lcom/samsung/android/sdk/ppmt/PpmtService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] fail to handle push message. db error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sget-object v7, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v8, "dberror"

    invoke-static {p0, v5, v6, v7, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v3    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
    .restart local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :cond_3
    :try_start_1
    const-string v7, "download_resource"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 84
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->requestDownloadResource(Landroid/content/Context;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 94
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :catch_1
    move-exception v3

    .line 95
    .local v3, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    sget-object v7, Lcom/samsung/android/sdk/ppmt/PpmtService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] fail to handle push message. internal error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v7, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v5, v6, v7, v10}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 85
    .end local v3    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    .restart local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :cond_4
    :try_start_2
    const-string v7, "display"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 86
    const-string v7, "is_first_display"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 87
    .local v4, "isFirstDisplay":Z
    invoke-virtual {v0, p0, v4}, Lcom/samsung/android/sdk/ppmt/content/Card;->displayCard(Landroid/content/Context;Z)V
    :try_end_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 97
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    .end local v4    # "isFirstDisplay":Z
    :catch_2
    move-exception v3

    .line 98
    .local v3, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    sget-object v7, Lcom/samsung/android/sdk/ppmt/PpmtService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] fail to handle push message. not supported type"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v7, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v5, v6, v7, v10}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    .end local v3    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    .restart local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :cond_5
    :try_start_3
    const-string v7, "dismiss"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 89
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->dismissDisplayedCard(Landroid/content/Context;)V
    :try_end_3
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 100
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    :catch_3
    move-exception v3

    .line 101
    .local v3, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;
    sget-object v7, Lcom/samsung/android/sdk/ppmt/PpmtService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] fail to handle push message. invalid card data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v7, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v5, v6, v7, v10}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 32
    if-nez p1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    const-string v4, "com.samsung.android.sdk.ppmt.SERVICE_EVENTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    const-string v4, "extra_action"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "send_collected_data"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 39
    const-string v4, "is_retry"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 40
    .local v1, "isRetry":Z
    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->sendCumulativeData(Landroid/content/Context;Z)V

    goto :goto_0

    .line 42
    .end local v1    # "isRetry":Z
    :cond_2
    const-string/jumbo v4, "send_updated_data"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 43
    const-string v4, "is_retry"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 44
    .restart local v1    # "isRetry":Z
    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->sendUpdatedData(Landroid/content/Context;Z)V

    goto :goto_0

    .line 46
    .end local v1    # "isRetry":Z
    :cond_3
    const-string/jumbo v4, "send_feedback"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 47
    const-string v4, "mid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "mid":Ljava/lang/String;
    const-string/jumbo v4, "targetid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "targetid":Ljava/lang/String;
    invoke-static {p0, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->sendFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v2    # "mid":Ljava/lang/String;
    .end local v3    # "targetid":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "req_call_api"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 52
    const-string v4, "mid"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .restart local v2    # "mid":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->requestApiCall(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v2    # "mid":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "send_dereg"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 55
    const-string v4, "is_retry"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 56
    .restart local v1    # "isRetry":Z
    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataSender;->sendDereg(Landroid/content/Context;Z)V

    goto :goto_0

    .line 58
    .end local v1    # "isRetry":Z
    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/PpmtService;->onHandleCardEvent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method
