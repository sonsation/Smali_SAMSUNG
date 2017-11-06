.class Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;
.super Ljava/lang/Object;
.source "SeekController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugUiUpdater"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DebugUiUpdater"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastCurrentTimeUpdatedTime:J

.field private mLastDurationUpdatedTime:J

.field private mLastProgress:I

.field private mLastProgressRequestedTime:J

.field private mLastProgressUpdatedTime:J

.field private mUpdateProgressInterval:J


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 808
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mContext:Landroid/content/Context;

    .line 809
    return-void
.end method


# virtual methods
.method setProgress(I)V
    .locals 8
    .param p1, "progress"    # I

    .prologue
    .line 838
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 841
    .local v2, "now":J
    const-string/jumbo v1, "update progress interval: %03d msec / target interval: %03d msec / amount: %d / progress: %04d / postFrameCallback() ~ doFrame() takes: %02d msec"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mLastProgressUpdatedTime:J

    sub-long v6, v2, v6

    .line 843
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mUpdateProgressInterval:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mLastProgress:I

    sub-int v6, p1, v6

    .line 844
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-wide v6, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mLastProgressRequestedTime:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 841
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "logString":Ljava/lang/String;
    const-string v1, "DebugUiUpdater"

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iput p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mLastProgress:I

    .line 847
    return-void
.end method

.method setRequestedTime()V
    .locals 2

    .prologue
    .line 812
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mLastProgressRequestedTime:J

    .line 813
    return-void
.end method

.method setUpdateCurrentTime(J)V
    .locals 7
    .param p1, "msec"    # J

    .prologue
    .line 820
    const-string v0, "DebugUiUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentTime updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    .line 821
    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / update interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 822
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mLastCurrentTimeUpdatedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mLastCurrentTimeUpdatedTime:J

    .line 824
    return-void
.end method

.method setUpdateDurationRelatedInfo(JJZ)V
    .locals 7
    .param p1, "msec"    # J
    .param p3, "progressUpdateInterval"    # J
    .param p5, "isLocalTrack"    # Z

    .prologue
    .line 828
    const-string v0, "DebugUiUpdater"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration updated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    .line 829
    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / update interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 830
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mLastDurationUpdatedTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec / progressUpdateInterval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msec / isLocalTrack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iput-wide p3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mUpdateProgressInterval:J

    .line 834
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mLastDurationUpdatedTime:J

    .line 835
    return-void
.end method

.method setUpdateProgressTime()V
    .locals 2

    .prologue
    .line 816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->mLastProgressUpdatedTime:J

    .line 817
    return-void
.end method
