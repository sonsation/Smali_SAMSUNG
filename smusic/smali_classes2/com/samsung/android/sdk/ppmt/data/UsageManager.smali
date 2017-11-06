.class public Lcom/samsung/android/sdk/ppmt/data/UsageManager;
.super Ljava/lang/Object;
.source "UsageManager.java"


# static fields
.field private static sUsageBuilder:Lcom/samsung/android/sdk/ppmt/data/UsageManager;


# instance fields
.field private final VALUE_TRANSACTION_END:Ljava/lang/String;

.field private mUsageFlow:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "END"

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->VALUE_TRANSACTION_END:Ljava/lang/String;

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->mUsageFlow:Lorg/json/JSONObject;

    .line 22
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/ppmt/data/UsageManager;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/samsung/android/sdk/ppmt/data/UsageManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->sUsageBuilder:Lcom/samsung/android/sdk/ppmt/data/UsageManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/data/UsageManager;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->sUsageBuilder:Lcom/samsung/android/sdk/ppmt/data/UsageManager;

    .line 29
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->sUsageBuilder:Lcom/samsung/android/sdk/ppmt/data/UsageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static handleUsageTransaction(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usageData"    # Lorg/json/JSONObject;

    .prologue
    .line 59
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->save(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 60
    return-void
.end method


# virtual methods
.method public save(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenId"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->mUsageFlow:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->mUsageFlow:Lorg/json/JSONObject;

    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->mUsageFlow:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public send(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->mUsageFlow:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->mUsageFlow:Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "END"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "extra_action"

    const-string v2, "handle_usage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v1, "usagedata"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->mUsageFlow:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/ppmt/data/UsageManager;->mUsageFlow:Lorg/json/JSONObject;

    .line 56
    return-void

    .line 46
    :catch_0
    move-exception v1

    goto :goto_0
.end method
