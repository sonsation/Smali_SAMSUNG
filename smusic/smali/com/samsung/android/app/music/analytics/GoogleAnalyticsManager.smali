.class public Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;
.super Ljava/lang/Object;
.source "GoogleAnalyticsManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final SESSION_TIMEOUT:I

.field private final TRACKER_ID:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mTracker:Lcom/google/android/gms/analytics/Tracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->instance:Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "GoogleAnalyticsManager"

    iput-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->LOG_TAG:Ljava/lang/String;

    .line 20
    const-string v0, "UA-101731883-1"

    iput-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->TRACKER_ID:Ljava/lang/String;

    .line 21
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->SESSION_TIMEOUT:I

    .line 26
    iput-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mContext:Landroid/content/Context;

    .line 27
    iput-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget-object v0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->instance:Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;

    if-nez v0, :cond_1

    .line 31
    const-class v1, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;

    monitor-enter v1

    .line 32
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->instance:Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->instance:Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;

    .line 35
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->instance:Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getTracker()Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    .prologue
    .line 61
    const-string v0, "GoogleAnalyticsManager"

    const-string v1, "getTracker >> "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 63
    const-string v0, "GoogleAnalyticsManager"

    const-string v1, "getTracker >>  mTracker is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->initTracker()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    return-object v0
.end method

.method private initTracker()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 46
    const-string v1, "GoogleAnalyticsManager"

    const-string v2, "initTracker >> "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 50
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    const-string v1, "GoogleAnalyticsManager"

    const-string v2, "initTracker >> Track Id : UA-101731883-1"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "UA-101731883-1"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 58
    return-void
.end method


# virtual methods
.method public hitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v1, "GoogleAnalyticsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hitEvent >> category : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", label : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    .line 74
    .local v0, "eventBuilder":Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 75
    invoke-virtual {v0, p2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 76
    invoke-virtual {v0, p3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 77
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->getTracker()Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 80
    return-void
.end method

.method public initGoogleAnalytics()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "GoogleAnalyticsManager"

    const-string v1, "initGoogleAnalytics >> "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->mTracker:Lcom/google/android/gms/analytics/Tracker;

    if-nez v0, :cond_0

    .line 85
    const-string v0, "GoogleAnalyticsManager"

    const-string v1, "initGoogleAnalytics >> mTracker is null."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/app/music/analytics/GoogleAnalyticsManager;->initTracker()V

    .line 88
    :cond_0
    return-void
.end method
