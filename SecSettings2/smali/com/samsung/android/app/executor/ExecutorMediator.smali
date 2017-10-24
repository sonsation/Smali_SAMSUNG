.class public Lcom/samsung/android/app/executor/ExecutorMediator;
.super Ljava/lang/Object;
.source "ExecutorMediator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnRuleCanceledListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$OnStateReceivedListener;,
        Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;,
        Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

.field private static mRuleSetInfoSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/samsung/android/app/executor/data/RuleSetInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

.field private mIsRuleRunning:Z

.field private mIsTestMode:Z

.field private mLastState:Lcom/samsung/android/app/executor/data/State;

.field private mLoc:Ljava/util/Locale;

.field private mPackageName:Ljava/lang/String;

.field private mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

.field private mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_0025"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mRuleSetInfoSet:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    .line 67
    iput-boolean v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsRuleRunning:Z

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLastState:Lcom/samsung/android/app/executor/data/State;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/executor/ExecutorMediator;)Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorMediator;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/executor/ExecutorMediator;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorMediator;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 2
    .param p0, "appName"    # Ljava/lang/String;
    .param p1, "appVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    monitor-enter v1

    .line 202
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    if-eqz v0, :cond_0

    .line 205
    :goto_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/executor/ExecutorMediator;->setAppName(Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setAppVersion(Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 203
    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-direct {v0}, Lcom/samsung/android/app/executor/ExecutorMediator;-><init>()V

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 550
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.samsung.android.rubin.app.intent.action.CM_LOGGING"

    .line 551
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.rubin.app"

    .line 552
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "command"

    .line 553
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appName"

    .line 554
    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "appVersion"

    .line 555
    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "timestamp"

    .line 556
    invoke-direct {p0}, Lcom/samsung/android/app/executor/ExecutorMediator;->getTimestamp()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 557
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Intent created to send command(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-object v0
.end method

.method private createLogStateData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "stateIds"    # Ljava/lang/String;

    .prologue
    .line 541
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "\"appName\":\""

    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\"logType\":\""

    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\"stateIds\":\""

    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-class v1, Lcom/samsung/android/app/executor/ExecutorMediator;

    monitor-enter v1

    .line 345
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInstance:Lcom/samsung/android/app/executor/ExecutorMediator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 346
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Instance is null. please call createInstance() for the first time."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNlgStateInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 682
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 684
    .local v3, "statesBuilder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    .line 705
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 690
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-interface {v4}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/app/executor/data/ScreenStateInfo;

    move-result-object v0

    .line 691
    .local v0, "ssi":Lcom/samsung/android/app/executor/data/ScreenStateInfo;
    sget-object v4, Lcom/samsung/android/app/executor/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/app/executor/data/ScreenStateInfo;

    if-eq v0, v4, :cond_2

    .line 696
    invoke-virtual {v0}, Lcom/samsung/android/app/executor/data/ScreenStateInfo;->getStates()Ljava/util/HashSet;

    move-result-object v2

    .line 698
    .local v2, "stateIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 699
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 702
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 692
    .end local v2    # "stateIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Partial Landing handler requires the current state ID. onScreenStatesRequested() is not allowed to return null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 699
    .restart local v2    # "stateIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 700
    .local v1, "stateId":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private getTimestamp()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "stateIds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 523
    if-eqz p1, :cond_0

    .line 524
    if-eqz p3, :cond_1

    .line 528
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/executor/ExecutorMediator;->createLogStateData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "logState":Ljava/lang/String;
    const-string/jumbo v2, "state_log"

    .line 529
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v1    # "logState":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->createIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v2, "stateIds"

    .line 534
    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 535
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 537
    return-void

    .line 523
    .end local v0    # "i":Landroid/content/Intent;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Context cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 524
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Log value cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 531
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private makeRuleSetVersionJson()Ljava/lang/String;
    .locals 10

    .prologue
    .line 291
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 292
    .local v6, "ruleSetInfoArray":Lorg/json/JSONArray;
    sget-object v8, Lcom/samsung/android/app/executor/ExecutorMediator;->mRuleSetInfoSet:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 293
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/executor/data/RuleSetInfo;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 301
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .local v7, "ruleSetInfoList":Lorg/json/JSONObject;
    const-string/jumbo v8, "ruleSetInfoList"

    .line 302
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "version"

    const-string/jumbo v9, "1.0"

    .line 304
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "command"

    const-string/jumbo v9, "esem_update_version"

    .line 305
    invoke-virtual {v3, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "content"

    .line 306
    invoke-virtual {v3, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 312
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/executor/data/RuleSetInfo;>;"
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "ruleSetInfoArray":Lorg/json/JSONArray;
    .end local v7    # "ruleSetInfoList":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 294
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/executor/data/RuleSetInfo;>;"
    .restart local v6    # "ruleSetInfoArray":Lorg/json/JSONArray;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/executor/data/RuleSetInfo;

    .line 295
    .local v1, "info":Lcom/samsung/android/app/executor/data/RuleSetInfo;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .local v5, "jsonRuleSetInfo":Lorg/json/JSONObject;
    const-string/jumbo v8, "appName"

    .line 296
    invoke-virtual {v1}, Lcom/samsung/android/app/executor/data/RuleSetInfo;->getAppName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "packageName"

    .line 297
    iget-object v9, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "ruleSetVersion"

    .line 298
    invoke-virtual {v1}, Lcom/samsung/android/app/executor/data/RuleSetInfo;->getRuleSetVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    .end local v1    # "info":Lcom/samsung/android/app/executor/data/RuleSetInfo;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/app/executor/data/RuleSetInfo;>;"
    .end local v5    # "jsonRuleSetInfo":Lorg/json/JSONObject;
    .end local v6    # "ruleSetInfoArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v4, 0x0

    .line 310
    .local v4, "jsonRes":Ljava/lang/String;
    goto :goto_1
.end method

.method private sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    if-nez v0, :cond_0

    const-string/jumbo v0, "state_log"

    .line 841
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 845
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;->onResponse(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :cond_1
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "EM is not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;
    .locals 8
    .param p0, "loc"    # Ljava/util/Locale;

    .prologue
    const/16 v7, 0x2d

    .line 712
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_3

    .line 717
    const/16 v0, 0x2d

    .line 718
    .local v0, "SEP":C
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 719
    .local v2, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v4

    .local v4, "variant":Ljava/lang/String;
    const-string/jumbo v5, "no"

    .line 724
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 730
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    const-string/jumbo v2, "und"

    :cond_2
    :goto_1
    const-string/jumbo v5, "\\p{Alpha}{2}|\\p{Digit}{3}"

    .line 742
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_2
    const-string/jumbo v5, "\\p{Alnum}{5,8}|\\p{Digit}\\p{Alnum}{3}"

    .line 747
    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 751
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 752
    .local v1, "bcp47Tag":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 755
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 759
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 713
    .end local v0    # "SEP":C
    .end local v1    # "bcp47Tag":Ljava/lang/StringBuilder;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "region":Ljava/lang/String;
    .end local v4    # "variant":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v0    # "SEP":C
    .restart local v2    # "language":Ljava/lang/String;
    .restart local v3    # "region":Ljava/lang/String;
    .restart local v4    # "variant":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "NO"

    .line 724
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "NY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v2, "nn"

    const-string/jumbo v3, "NO"

    const-string/jumbo v4, ""

    .line 727
    goto :goto_0

    :cond_5
    const-string/jumbo v5, "\\p{Alpha}{2,8}"

    .line 730
    invoke-virtual {v2, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "iw"

    .line 733
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "in"

    .line 735
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "ji"

    .line 737
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v2, "yi"

    .line 738
    goto :goto_1

    :cond_6
    const-string/jumbo v2, "he"

    .line 734
    goto :goto_1

    :cond_7
    const-string/jumbo v2, "id"

    .line 736
    goto :goto_1

    :cond_8
    const-string/jumbo v3, ""

    .line 743
    goto :goto_2

    :cond_9
    const-string/jumbo v4, ""

    .line 748
    goto :goto_3

    .line 753
    .restart local v1    # "bcp47Tag":Ljava/lang/StringBuilder;
    :cond_a
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 756
    :cond_b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method


# virtual methods
.method public clearInterimStateListener()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 374
    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    .line 375
    return-void
.end method

.method public isRuleRunning()Z
    .locals 1

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsRuleRunning:Z

    return v0
.end method

.method public logEnterState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "state_enter"

    .line 457
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public logEnterStates(Landroid/content/Context;Ljava/util/Set;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 468
    .local p2, "stateIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v1, "statesBuilder":Ljava/lang/StringBuilder;
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "state_enter"

    .line 475
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    return-void

    .line 469
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 470
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 473
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 470
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 471
    .local v0, "stateId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public logExitState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stateId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "state_exit"

    .line 485
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public logExitStates(Landroid/content/Context;Ljava/util/Set;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 496
    .local p2, "stateIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 497
    .local v1, "statesBuilder":Ljava/lang/StringBuilder;
    if-nez p2, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v2, "state_exit"

    .line 503
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->logState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void

    .line 497
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 498
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 501
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 498
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 499
    .local v0, "stateId":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method requestContext()V
    .locals 7

    .prologue
    const-string/jumbo v1, ""

    .line 634
    .local v1, "ret":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v5, :cond_0

    .line 651
    sget-object v5, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "InterimListener is not set."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 659
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\"result\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "msg":Ljava/lang/String;
    :goto_1
    const-string/jumbo v5, "app_context"

    .line 662
    invoke-direct {p0, v5, v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void

    .line 635
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-interface {v5}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onScreenStatesRequested()Lcom/samsung/android/app/executor/data/ScreenStateInfo;

    move-result-object v3

    .line 636
    .local v3, "ssi":Lcom/samsung/android/app/executor/data/ScreenStateInfo;
    sget-object v5, Lcom/samsung/android/app/executor/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/app/executor/data/ScreenStateInfo;

    if-ne v3, v5, :cond_1

    .line 648
    sget-object v5, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "STATE_NOT_APPLICABLE"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 637
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/app/executor/data/ScreenStateInfo;->toString()Ljava/lang/String;

    move-result-object v4

    .line 638
    .local v4, "states":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 645
    sget-object v5, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "No state ids."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 639
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "{ "

    .line 640
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",\"appName\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\","

    .line 641
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\"appVersion\":\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppVersion:Ljava/lang/String;

    .line 642
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\" }"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 656
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "ssi":Lcom/samsung/android/app/executor/data/ScreenStateInfo;
    .end local v4    # "states":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\"result\": \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v6}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\",\"deviceContext\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public requestNlg(Lcom/samsung/android/app/executor/data/NlgRequestInfo;)V
    .locals 7
    .param p1, "nri"    # Lcom/samsung/android/app/executor/data/NlgRequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 419
    iget-object v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLoc:Ljava/util/Locale;

    if-nez v3, :cond_1

    .line 422
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "deviceLocale":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\"currentStateIds\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/samsung/android/app/executor/ExecutorMediator;->getNlgStateInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "stateInfo":Ljava/lang/String;
    const-string/jumbo v3, "\"language\":\"%s\",\"requestedAppName\":\"%s\",%s,%s"

    const/4 v4, 0x4

    .line 427
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 428
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/NlgRequestInfo;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 427
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "ret":Ljava/lang/String;
    const-string/jumbo v3, "nlg"

    .line 430
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void

    .line 414
    .end local v0    # "deviceLocale":Ljava/lang/String;
    .end local v1    # "ret":Ljava/lang/String;
    .end local v2    # "stateInfo":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "NlgRequestInfo cannot be null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 420
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLoc:Ljava/util/Locale;

    invoke-static {v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->toBcp47Language(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "deviceLocale":Ljava/lang/String;
    goto :goto_0
.end method

.method requestRuleSetVersion()V
    .locals 2

    .prologue
    const-string/jumbo v0, "rule_set_version"

    .line 628
    invoke-direct {p0}, Lcom/samsung/android/app/executor/ExecutorMediator;->makeRuleSetVersionJson()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method sendParamFilling(Lcom/samsung/android/app/executor/data/ParamFilling;)V
    .locals 3
    .param p1, "pf"    # Lcom/samsung/android/app/executor/data/ParamFilling;

    .prologue
    .line 667
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "ret":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v1, :cond_1

    .line 674
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "InterimListener is null."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-string/jumbo v1, "param_filling"

    .line 677
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onParamFillingReceived(Lcom/samsung/android/app/executor/data/ParamFilling;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 671
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V
    .locals 3
    .param p1, "result"    # Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLastState:Lcom/samsung/android/app/executor/data/State;

    if-nez v0, :cond_1

    .line 396
    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string/jumbo v0, "state_command_result"

    .line 401
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLastState:Lcom/samsung/android/app/executor/data/State;

    invoke-virtual {v0}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setRuleRunning(Z)V

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setRuleRunning(Z)V

    .line 398
    iput-object v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLastState:Lcom/samsung/android/app/executor/data/State;

    goto :goto_1
.end method

.method sendState(Lcom/samsung/android/app/executor/data/State;)I
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/app/executor/data/State;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 567
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/executor/ExecutorMediator;->setRuleRunning(Z)V

    .line 568
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mLastState:Lcom/samsung/android/app/executor/data/State;

    .line 570
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 575
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 578
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getSeqNum()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 596
    new-instance v0, Lcom/samsung/android/app/executor/ExecutorMediator$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$1;-><init>(Lcom/samsung/android/app/executor/ExecutorMediator;Lcom/samsung/android/app/executor/data/State;)V

    .line 608
    .local v0, "sendStateRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 610
    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 613
    :goto_0
    return v3

    .line 571
    .end local v0    # "sendStateRunnable":Ljava/lang/Runnable;
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    .line 572
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "SeqNo 0 found. isTestMode true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;->SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 574
    return v3

    .line 576
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;->onStateReceived(Lcom/samsung/android/app/executor/data/State;)V

    .line 577
    return v3

    .line 579
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/executor/ExecutorMediator;->setRuleRunning(Z)V

    .line 581
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-eqz v1, :cond_4

    .line 586
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    if-nez v1, :cond_5

    .line 590
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    if-nez v1, :cond_6

    .line 593
    :goto_2
    return v3

    .line 581
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    if-nez v1, :cond_3

    .line 582
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No listener is set."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    return v3

    .line 587
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_1

    .line 591
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    invoke-virtual {p1}, Lcom/samsung/android/app/executor/data/State;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;->onRuleCanceled(Ljava/lang/String;)V

    goto :goto_2

    .line 611
    .restart local v0    # "sendStateRunnable":Ljava/lang/Runnable;
    :cond_7
    iput-boolean v3, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsTestMode:Z

    goto :goto_0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppName:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mAppVersion:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setClientVisibility(Z)V
    .locals 3
    .param p1, "shouldBeVisible"    # Z

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/samsung/android/app/executor/ExecutorMediator;->isRuleRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\"visible\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "visibility":Ljava/lang/String;
    const-string/jumbo v1, "client_control"

    .line 834
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/executor/ExecutorMediator;->sendCommandToEm(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    return-void

    .line 828
    .end local v0    # "visibility":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorMediator;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setClientVisibility(): Path Rule is not running."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void
.end method

.method public setInterimStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;)V
    .locals 0
    .param p1, "stateListener"    # Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mInterimListener:Lcom/samsung/android/app/executor/ExecutorMediator$InterimStateListener;

    .line 366
    return-void
.end method

.method setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mPackageName:Ljava/lang/String;

    .line 174
    return-void
.end method

.method setResponseCallback(Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mResponseCallback:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    .line 624
    return-void
.end method

.method setRuleRunning(Z)V
    .locals 0
    .param p1, "isRuleRunning"    # Z

    .prologue
    .line 773
    iput-boolean p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mIsRuleRunning:Z

    .line 774
    return-void
.end method

.method public setStartStateListener(Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;)V
    .locals 0
    .param p1, "stateListener"    # Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorMediator;->mStartListener:Lcom/samsung/android/app/executor/ExecutorMediator$StartStateListener;

    .line 358
    return-void
.end method
