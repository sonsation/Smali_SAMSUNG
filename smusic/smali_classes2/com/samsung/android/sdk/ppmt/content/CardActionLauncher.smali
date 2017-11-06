.class public Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;
.super Ljava/lang/Object;
.source "CardActionLauncher.java"


# static fields
.field private static final APP_PARAM_EXTRA_KEY:Ljava/lang/String; = "com.samsung.android.sdk.ppmt.APP_PARAM"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendReferrerQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 343
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static callApi(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .prologue
    const/4 v3, 0x0

    .line 227
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to call api. url null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_0
    return v3

    .line 232
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->getReferrerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "referrerStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 234
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    const-string v5, "ppmtref"

    invoke-static {v4, v5, v2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->appendReferrerQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    .line 237
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 238
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_2

    .line 239
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to call api. db null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_2
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardRetryCount(Ljava/lang/String;I)Z

    .line 244
    const-string/jumbo v4, "url"

    iget-object v5, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v4, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardExtraData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 245
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to call api. db update fail"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 248
    :cond_3
    :try_start_1
    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-static {p0, p1, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardStatusAfterGone(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 253
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.sdk.ppmt.SERVICE_EVENTS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v3, "extra_action"

    const-string/jumbo v4, "req_call_api"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v3, "mid"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 259
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 250
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v3
.end method

.method private static handleApiCallFail(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 302
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v6

    .line 303
    .local v6, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v6, :cond_2

    .line 305
    const/16 v0, 0x190

    if-gt v0, p2, :cond_0

    const/16 v0, 0x1f4

    if-lt p2, v0, :cond_1

    :cond_0
    const/16 v0, 0x3f0

    if-eq p2, v0, :cond_1

    const/16 v0, 0x3f3

    if-ne p2, v0, :cond_3

    .line 309
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToGone(Landroid/content/Context;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v0, "url"

    invoke-virtual {v6, p1, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->removeCardExtraData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :goto_0
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 339
    :cond_2
    :goto_1
    return-void

    .line 313
    :cond_3
    :try_start_1
    invoke-virtual {v6, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardRetryCount(Ljava/lang/String;)I

    move-result v7

    .line 314
    .local v7, "retryCount":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_4

    .line 315
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] fail to get retrycount. do not retry"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToGone(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v0, "url"

    invoke-virtual {v6, p1, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->removeCardExtraData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_1

    .line 320
    :cond_4
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "retryCount":I
    .local v8, "retryCount":I
    const/4 v0, 0x5

    if-lt v7, v0, :cond_5

    .line 321
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] over retry count. do not retry api call"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToGone(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    const-string/jumbo v0, "url"

    invoke-virtual {v6, p1, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->removeCardExtraData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 336
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_1

    .line 326
    :cond_5
    :try_start_3
    invoke-virtual {v6, p1, v8}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardRetryCount(Ljava/lang/String;I)Z

    .line 328
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "mid"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "api_call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v10, 0x36ee80

    add-long/2addr v2, v10

    const-string/jumbo v4, "req_call_api"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 336
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v8    # "retryCount":I
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v0
.end method

.method private static handleApiCallSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 293
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToGone(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 295
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v0, :cond_0

    .line 296
    const-string/jumbo v1, "url"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->removeCardExtraData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 297
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 299
    :cond_0
    return-void
.end method

.method private static handleClickAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .prologue
    .line 76
    const-string v0, "app"

    iget-object v1, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->launchApplication(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 78
    :cond_0
    const-string/jumbo v0, "url"

    iget-object v1, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->launchBrowser(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    const-string v0, "intent"

    iget-object v1, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->launchIntent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z

    move-result v0

    goto :goto_0

    .line 82
    :cond_2
    const-string v0, "api"

    iget-object v1, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->callApi(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z

    move-result v0

    goto :goto_0

    .line 85
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPlayStoreAppUri(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 167
    const-string v0, "market://details?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isPlayStoreWebUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v0, "https://play.google.com/store/apps/details?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://play.google.com/store/apps/details?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWebUrl(Ljava/lang/String;)Z
    .locals 1
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static launchApplication(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .prologue
    const/4 v3, 0x0

    .line 89
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 90
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to launch app. pkg null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_0
    return v3

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    .line 97
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to launch app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mAppParam:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 102
    const-string v4, "com.samsung.android.sdk.ppmt.APP_PARAM"

    iget-object v5, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mAppParam:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_2
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->getReferrerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "referrerStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 107
    const-string v4, "ppmtref"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    :cond_3
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] success to launch app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    const/4 v3, 0x1

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to launch app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static launchBrowser(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .prologue
    const/4 v5, 0x0

    .line 122
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to start browser. url null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 153
    :goto_0
    return v4

    .line 127
    :cond_0
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->getReferrerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "referrerStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->isWebUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 130
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->isPlayStoreWebUrl(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    const-string/jumbo v6, "referrer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ppmtref="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->appendReferrerQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    .line 133
    const/4 v2, 0x0

    .line 140
    :cond_1
    :goto_2
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 141
    .local v3, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 142
    .local v0, "displayIntent":Landroid/content/Intent;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 143
    const-string v4, "ppmtref"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    :cond_2
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 148
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] success to launch browser : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    const/4 v4, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "displayIntent":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    const-string v6, "ppmtref"

    invoke-static {v4, v6, v2}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->appendReferrerQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 134
    :cond_4
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->isPlayStoreAppUri(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    const-string/jumbo v6, "referrer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ppmtref="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->appendReferrerQueryString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mUrl:Ljava/lang/String;

    .line 136
    const/4 v2, 0x0

    goto :goto_2

    .line 151
    .restart local v0    # "displayIntent":Landroid/content/Intent;
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] fail to launch browser:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 153
    goto/16 :goto_0
.end method

.method private static launchIntent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/samsung/android/sdk/ppmt/content/CardAction;

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to launch intent. pkg null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_0
    return v3

    .line 176
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mData:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 180
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mData:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 181
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    :cond_1
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mAction:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 185
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_2
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mClassName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mPackageName:Ljava/lang/String;

    iget-object v6, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mClassName:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 192
    :cond_3
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mExtra:Landroid/os/Bundle;

    if-eqz v4, :cond_4

    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 193
    iget-object v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 196
    :cond_4
    invoke-virtual {p2, p1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->getReferrerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, "referrerStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 198
    const-string v4, "ppmtref"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    :cond_5
    :try_start_0
    iget v4, p2, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mComponent:I

    packed-switch v4, :pswitch_data_0

    .line 215
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to launch intent. invalid component"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fail to launch intent. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_0
    const/high16 v4, 0x10000000

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 218
    :goto_1
    sget-object v4, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] success to launch intent"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 208
    :pswitch_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 211
    :pswitch_2
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static onCardClear(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    const-string v2, "mid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "mid":Ljava/lang/String;
    const-string/jumbo v2, "targetid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "targetid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    const-string v3, "fail to handle clear event. mid null"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToGone(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onCardClick(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const-string v5, "mid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "mid":Ljava/lang/String;
    const-string/jumbo v5, "targetid"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "targetid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 37
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    const-string v6, "fail to handle click event. mid null"

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToGone(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v5, 0x5

    if-ge v2, v5, :cond_3

    .line 44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card_action"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 45
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    .line 46
    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/content/CardAction;->parse(Landroid/os/Bundle;)Lcom/samsung/android/sdk/ppmt/content/CardAction;

    move-result-object v0

    .line 47
    .local v0, "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    const-string v5, "ignore"

    iget-object v6, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 48
    sget-object v5, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v6, 0x0

    invoke-static {p0, v3, v4, v5, v6}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_1
    invoke-static {p0, v3, v0}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->handleClickAction(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardAction;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    sget-object v5, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    iget-object v6, v0, Lcom/samsung/android/sdk/ppmt/content/CardAction;->mType:Ljava/lang/String;

    invoke-static {p0, v3, v4, v5, v6}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 59
    .end local v0    # "action":Lcom/samsung/android/sdk/ppmt/content/CardAction;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_3
    sget-object v5, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v6, "fail_to_connect_target"

    invoke-static {p0, v3, v4, v5, v6}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static requestApiCall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    .line 264
    .local v1, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v1, :cond_0

    .line 265
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to call api. db null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void

    .line 271
    :cond_0
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardExtraData(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 272
    .local v3, "extradata":Lorg/json/JSONObject;
    const-string/jumbo v6, "url"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 279
    .local v0, "apiUrl":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 282
    new-instance v4, Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;

    invoke-direct {v4, v0}, Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;-><init>(Ljava/lang/String;)V

    .line 283
    .local v4, "request":Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;
    const/16 v6, 0x3c

    invoke-static {p0, v4, v6}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v5

    .line 284
    .local v5, "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    iget-boolean v6, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->isSuccess:Z

    if-eqz v6, :cond_1

    .line 285
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] API call Success"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->handleApiCallSuccess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    .end local v0    # "apiUrl":Ljava/lang/String;
    .end local v3    # "extradata":Lorg/json/JSONObject;
    .end local v4    # "request":Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;
    .end local v5    # "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    :catch_0
    move-exception v2

    .line 274
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to request api. invalid url"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToGone(Landroid/content/Context;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v6, "url"

    invoke-virtual {v1, p1, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->removeCardExtraData(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v6

    .line 288
    .restart local v0    # "apiUrl":Ljava/lang/String;
    .restart local v3    # "extradata":Lorg/json/JSONObject;
    .restart local v4    # "request":Lcom/samsung/android/sdk/ppmt/network/request/ApiCardActionRequest;
    .restart local v5    # "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    :cond_1
    iget v6, v5, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    invoke-static {p0, p1, v6}, Lcom/samsung/android/sdk/ppmt/content/CardActionLauncher;->handleApiCallFail(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method
