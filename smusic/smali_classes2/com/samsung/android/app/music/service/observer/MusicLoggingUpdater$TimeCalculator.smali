.class Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;
.super Ljava/lang/Object;
.source "MusicLoggingUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeCalculator"
.end annotation


# instance fields
.field private mPassedTime:J

.field private mStartedTime:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mStartedTime:J

    .line 225
    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mPassedTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$1;

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;-><init>()V

    return-void
.end method


# virtual methods
.method getTimeDuration()J
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->stopTime()V

    .line 233
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mPassedTime:J

    return-wide v0
.end method

.method resetTime()V
    .locals 2

    .prologue
    .line 249
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mPassedTime:J

    .line 250
    return-void
.end method

.method setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 245
    iput-wide p1, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mPassedTime:J

    .line 246
    return-void
.end method

.method startTime()V
    .locals 2

    .prologue
    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mStartedTime:J

    .line 229
    return-void
.end method

.method stopTime()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 237
    iget-wide v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mStartedTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mStartedTime:J

    sub-long v0, v2, v4

    .line 239
    .local v0, "playingTime":J
    iget-wide v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mPassedTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mPassedTime:J

    .line 241
    .end local v0    # "playingTime":J
    :cond_0
    iput-wide v6, p0, Lcom/samsung/android/app/music/service/observer/MusicLoggingUpdater$TimeCalculator;->mStartedTime:J

    .line 242
    return-void
.end method
