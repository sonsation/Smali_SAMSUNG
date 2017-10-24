.class public Lcom/android/server/notification/EventConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "EventConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/EventConditionProvider$1;,
        Lcom/android/server/notification/EventConditionProvider$2;,
        Lcom/android/server/notification/EventConditionProvider$3;
    }
.end annotation


# static fields
.field private static final ACTION_EVALUATE:Ljava/lang/String;

.field private static final CHANGE_DELAY:J = 0x7d0L

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final NOT_SHOWN:Ljava/lang/String; = "..."

.field private static final REQUEST_CODE_EVALUATE:I = 0x1

.field private static final SIMPLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.ECP"


# instance fields
.field private mBootComplete:Z

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mEvaluateSubscriptionsW:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mSubscriptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Landroid/os/HandlerThread;

.field private final mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/notification/CalendarTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptionsW()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-string/jumbo v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "android"

    const-class v2, Lcom/android/server/notification/EventConditionProvider;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    .line 61
    const-class v0, Lcom/android/server/notification/EventConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".EVALUATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    .line 67
    iput-object p0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    .line 326
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$1;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    .line 335
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$2;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 343
    new-instance v0, Lcom/android/server/notification/EventConditionProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$3;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    .line 79
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConditionProviders.ECP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ConditionProviders.ECP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mThread:Landroid/os/HandlerThread;

    .line 81
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method private createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .locals 11
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "state"    # I

    .prologue
    .line 297
    const-string/jumbo v10, "..."

    .line 298
    .local v10, "summary":Ljava/lang/String;
    const-string/jumbo v8, "..."

    .line 299
    .local v8, "line1":Ljava/lang/String;
    const-string/jumbo v9, "..."

    .line 300
    .local v9, "line2":Ljava/lang/String;
    new-instance v0, Landroid/service/notification/Condition;

    const-string/jumbo v2, "..."

    const-string/jumbo v3, "..."

    const-string/jumbo v4, "..."

    const/4 v5, 0x0

    const/4 v7, 0x2

    move-object v1, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method

.method private evaluateSubscriptions()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mWorker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    :cond_0
    return-void
.end method

.method private evaluateSubscriptionsW()V
    .locals 26

    .prologue
    .line 212
    sget-boolean v19, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v19, :cond_0

    const-string/jumbo v19, "ConditionProviders.ECP"

    const-string/jumbo v20, "evaluateSubscriptions"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 214
    sget-boolean v19, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v19, :cond_1

    const-string/jumbo v19, "ConditionProviders.ECP"

    const-string/jumbo v20, "Skipping evaluate before boot complete"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1
    return-void

    .line 217
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 218
    .local v12, "now":J
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v8, "conditionsToNotify":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Condition;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 220
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_4

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/notification/CalendarTracker;

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v20, 0x0

    .line 221
    :goto_1
    invoke-virtual/range {v19 .. v20}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    .line 220
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 222
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    move-object/from16 v20, v0

    goto :goto_1

    .line 224
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/notification/EventConditionProvider;->setRegistered(Z)V

    .line 225
    const-wide/16 v14, 0x0

    .line 226
    .local v14, "reevaluateAt":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "conditionId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 227
    .local v6, "conditionId":Landroid/net/Uri;
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v9

    .line 228
    .local v9, "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    if-nez v9, :cond_6

    .line 229
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 219
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v7    # "conditionId$iterator":Ljava/util/Iterator;
    .end local v9    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .end local v14    # "reevaluateAt":J
    :catchall_0
    move-exception v19

    monitor-exit v21

    throw v19

    .line 224
    :cond_5
    const/16 v19, 0x1

    goto :goto_2

    .line 232
    .restart local v6    # "conditionId":Landroid/net/Uri;
    .restart local v7    # "conditionId$iterator":Ljava/util/Iterator;
    .restart local v9    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    .restart local v14    # "reevaluateAt":J
    :cond_6
    const/16 v16, 0x0

    .line 233
    .local v16, "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :try_start_1
    iget-object v0, v9, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_8

    .line 235
    const/4 v10, 0x0

    .end local v16    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_a

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/notification/CalendarTracker;

    .line 237
    .local v17, "tracker":Lcom/android/server/notification/CalendarTracker;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v12, v13}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v11

    .line 238
    .local v11, "r":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    if-nez v16, :cond_7

    .line 239
    move-object/from16 v16, v11

    .line 235
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 241
    :cond_7
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    move/from16 v19, v0

    iget-boolean v0, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    move/from16 v20, v0

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    .line 242
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-wide/from16 v22, v0

    iget-wide v0, v11, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_5

    .line 247
    .end local v11    # "r":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v17    # "tracker":Lcom/android/server/notification/CalendarTracker;
    .restart local v16    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    :cond_8
    iget v0, v9, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v18

    .line 248
    .local v18, "userId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/notification/CalendarTracker;

    .line 249
    .restart local v17    # "tracker":Lcom/android/server/notification/CalendarTracker;
    if-nez v17, :cond_9

    .line 250
    const-string/jumbo v19, "ConditionProviders.ECP"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "No calendar tracker found for user "

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 254
    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v12, v13}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v16

    .line 256
    .end local v16    # "result":Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .end local v17    # "tracker":Lcom/android/server/notification/CalendarTracker;
    .end local v18    # "userId":I
    :cond_a
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v19, v22, v24

    if-eqz v19, :cond_c

    .line 257
    const-wide/16 v22, 0x0

    cmp-long v19, v14, v22

    if-eqz v19, :cond_b

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-wide/from16 v22, v0

    cmp-long v19, v22, v14

    if-gez v19, :cond_c

    .line 258
    :cond_b
    move-object/from16 v0, v16

    iget-wide v14, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    .line 260
    :cond_c
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    .line 261
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 264
    :cond_d
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v6, v1}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 266
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v9    # "event":Landroid/service/notification/ZenModeConfig$EventInfo;
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/server/notification/EventConditionProvider;->rescheduleAlarm(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v21

    .line 268
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "condition$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/Condition;

    .line 269
    .local v4, "condition":Landroid/service/notification/Condition;
    if-eqz v4, :cond_f

    .line 270
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    goto :goto_6

    .line 273
    .end local v4    # "condition":Landroid/service/notification/Condition;
    :cond_10
    sget-boolean v19, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v19, :cond_11

    const-string/jumbo v19, "ConditionProviders.ECP"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "evaluateSubscriptions took "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v12

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_11
    return-void
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 320
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private reloadTrackers()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 181
    sget-boolean v5, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ConditionProviders.ECP"

    const-string/jumbo v6, "reloadTrackers"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 183
    iget-object v5, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/CalendarTracker;

    invoke-virtual {v5, v7}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v5, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 186
    iget-object v5, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "user$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 189
    .local v2, "user":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 190
    .local v4, "userinfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v5

    if-nez v5, :cond_2

    .line 195
    :cond_3
    invoke-virtual {v2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    .line 196
    .local v0, "context":Landroid/content/Context;
    :goto_2
    if-nez v0, :cond_5

    .line 197
    const-string/jumbo v5, "ConditionProviders.ECP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to create context for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 195
    .end local v0    # "context":Landroid/content/Context;
    :cond_4
    iget-object v5, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/android/server/notification/EventConditionProvider;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    goto :goto_2

    .line 200
    .restart local v0    # "context":Landroid/content/Context;
    :cond_5
    iget-object v5, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    new-instance v7, Lcom/android/server/notification/CalendarTracker;

    iget-object v8, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8, v0}, Lcom/android/server/notification/CalendarTracker;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 202
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "user":Landroid/os/UserHandle;
    .end local v4    # "userinfo":Landroid/content/pm/UserInfo;
    :cond_6
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V

    .line 180
    return-void
.end method

.method private rescheduleAlarm(JJ)V
    .locals 11
    .param p1, "now"    # J
    .param p3, "time"    # J

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 277
    iput-wide p3, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    .line 278
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 279
    .local v0, "alarms":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    .line 281
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    const/high16 v4, 0x10000000

    .line 281
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 283
    const-string/jumbo v4, "time"

    .line 281
    invoke-virtual {v3, v4, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    .line 284
    const/high16 v4, 0x8000000

    .line 279
    invoke-static {v2, v9, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 285
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 286
    cmp-long v2, p3, v6

    if-eqz v2, :cond_0

    cmp-long v2, p3, p1

    if-gez v2, :cond_3

    .line 287
    :cond_0
    sget-boolean v2, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v3, "ConditionProviders.ECP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not scheduling evaluate: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    cmp-long v2, p3, v6

    if-nez v2, :cond_2

    const-string/jumbo v2, "no time specified"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    return-void

    .line 288
    :cond_2
    const-string/jumbo v2, "specified time in the past"

    goto :goto_0

    .line 291
    :cond_3
    sget-boolean v2, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ConditionProviders.ECP"

    const-string/jumbo v3, "Scheduling evaluate for %s, in %s, now=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 292
    invoke-static {p3, p4}, Lcom/android/server/notification/EventConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    sub-long v6, p3, p1

    invoke-static {v6, v7}, Lcom/android/server/notification/EventConditionProvider;->formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {p1, p2}, Lcom/android/server/notification/EventConditionProvider;->ts(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 291
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_4
    invoke-virtual {v0, v8, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 276
    return-void
.end method

.method private setRegistered(Z)V
    .locals 4
    .param p1, "registered"    # Z

    .prologue
    .line 304
    iget-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    if-ne v1, p1, :cond_0

    return-void

    .line 305
    :cond_0
    sget-boolean v1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ConditionProviders.ECP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRegistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    .line 307
    iget-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    if-eqz v1, :cond_2

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 310
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    sget-object v1, Lcom/android/server/notification/EventConditionProvider;->ACTION_EVALUATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/EventConditionProvider;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 314
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/EventConditionProvider;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/EventConditionProvider;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/notification/EventConditionProvider;->attachBaseContext(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 97
    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/notification/EventConditionProvider;->SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 99
    const-string/jumbo v0, "      mRegistered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mRegistered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 100
    const-string/jumbo v0, "      mBootComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 101
    const-string/jumbo v1, "mNextAlarmTime"

    iget-wide v2, p0, Lcom/android/server/notification/EventConditionProvider;->mNextAlarmTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/EventConditionProvider;->dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    .line 102
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v1

    .line 103
    :try_start_0
    const-string/jumbo v0, "      mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "conditionId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 105
    .local v6, "conditionId":Landroid/net/Uri;
    const-string/jumbo v0, "        "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    .end local v6    # "conditionId":Landroid/net/Uri;
    .end local v7    # "conditionId$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .restart local v7    # "conditionId$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v1

    .line 109
    const-string/jumbo v0, "      mTrackers="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 111
    const-string/jumbo v0, "        user="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 112
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/CalendarTracker;

    const-string/jumbo v1, "          "

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/CalendarTracker;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 110
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 96
    :cond_1
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/notification/EventConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "id"    # Landroid/net/Uri;

    .prologue
    .line 92
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onBootComplete()V
    .locals 3

    .prologue
    .line 118
    sget-boolean v1, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ConditionProviders.ECP"

    const-string/jumbo v2, "onBootComplete"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    if-eqz v1, :cond_1

    return-void

    .line 120
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/EventConditionProvider;->mBootComplete:Z

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string/jumbo v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/notification/EventConditionProvider$4;

    invoke-direct {v2, p0}, Lcom/android/server/notification/EventConditionProvider$4;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->reloadTrackers()V

    .line 117
    return-void
.end method

.method public onConnected()V
    .locals 2

    .prologue
    .line 135
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    .line 142
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/EventConditionProvider;->mConnected:Z

    .line 140
    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConditionProviders.ECP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/EventConditionProvider;->createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/EventConditionProvider;->notifyCondition(Landroid/service/notification/Condition;)V

    .line 151
    return-void

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    .line 147
    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 3
    .param p1, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 162
    sget-boolean v0, Lcom/android/server/notification/EventConditionProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ConditionProviders.ECP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnsubscribe "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/EventConditionProvider;->mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0}, Lcom/android/server/notification/EventConditionProvider;->evaluateSubscriptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 161
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
