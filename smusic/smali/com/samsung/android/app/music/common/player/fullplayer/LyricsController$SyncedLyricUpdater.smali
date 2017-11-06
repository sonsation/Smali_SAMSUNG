.class final Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;
.super Ljava/lang/Object;
.source "LyricsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SyncedLyricUpdater"
.end annotation


# instance fields
.field private final DELAY_REPEAT_UPDATE_DEFAULT:I

.field private final PREFIX_TAG:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field private mRepeatScrollType:I

.field private final mRunnableOnceUpdater:Ljava/lang/Runnable;

.field private final mRunnableRepeatUpdater:Ljava/lang/Runnable;

.field private mStarted:Z

.field private final mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

.field private final mUpdateHandler:Landroid/os/Handler;

.field private final mUpdateThread:Landroid/os/HandlerThread;

.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;)V
    .locals 2
    .param p2, "syncedLyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const-string v0, "SyncedLyric-"

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->PREFIX_TAG:Ljava/lang/String;

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncedLyric-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->TAG:Ljava/lang/String;

    .line 577
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->DELAY_REPEAT_UPDATE_DEFAULT:I

    .line 579
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mChoreographer:Landroid/view/Choreographer;

    .line 583
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mRunnableOnceUpdater:Ljava/lang/Runnable;

    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mStarted:Z

    .line 598
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$2;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 616
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater$3;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mRunnableRepeatUpdater:Ljava/lang/Runnable;

    .line 625
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    .line 626
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mUpdateThread:Landroid/os/HandlerThread;

    .line 627
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 628
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mUpdateHandler:Landroid/os/Handler;

    .line 629
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;I)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->updateSyncPositionInternal(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    .prologue
    .line 571
    iget v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mRepeatScrollType:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;
    .param p1, "x1"    # I

    .prologue
    .line 571
    iput p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mRepeatScrollType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mRunnableRepeatUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method private updateSyncPositionInternal(I)J
    .locals 18
    .param p1, "scrollType"    # I

    .prologue
    .line 667
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v10

    .line 668
    .local v10, "position":J
    const/high16 v13, 0x447a0000    # 1000.0f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v14}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$1800(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)F

    move-result v14

    div-float/2addr v13, v14

    float-to-long v4, v13

    .line 669
    .local v4, "delayTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v13, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->find(J)I

    move-result v2

    .line 670
    .local v2, "currentLyricLinePosition":I
    if-ltz v2, :cond_0

    .line 671
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v13, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v3

    .line 672
    .local v3, "line":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "update() find : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", current : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", lyric : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 673
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 672
    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    .end local v3    # "line":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v13}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getCount()I

    move-result v6

    .line 677
    .local v6, "linesCount":I
    add-int/lit8 v7, v2, 0x1

    .line 678
    .local v7, "nextLinePosition":I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 679
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mSyncedLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;

    invoke-interface {v13, v7}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/SyncedLyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v8

    .line 680
    .local v8, "nextLyricLine":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->toString()Ljava/lang/String;

    move-result-object v12

    .line 681
    .local v12, "strLyric":Ljava/lang/String;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 682
    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v14

    sub-long/2addr v14, v10

    long-to-float v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v14}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$1800(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)F

    move-result v14

    div-float/2addr v13, v14

    float-to-long v4, v13

    .line 683
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Delay time : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", org : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 684
    invoke-interface {v8}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v16

    sub-long v16, v16, v10

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", speed : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v15}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$1800(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)F

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 683
    invoke-static {v13, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    .end local v8    # "nextLyricLine":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .end local v12    # "strLyric":Ljava/lang/String;
    :cond_1
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    const/high16 v9, 0x3f800000    # 1.0f

    .line 690
    .local v9, "scrollSpeedFactor":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v13}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$1700(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v2, v0, v9}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->highlightLine(IIF)V

    .line 691
    return-wide v4

    .line 687
    .end local v9    # "scrollSpeedFactor":F
    .restart local v8    # "nextLyricLine":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .restart local v12    # "strLyric":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 688
    goto :goto_0

    .line 689
    .end local v8    # "nextLyricLine":Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;
    .end local v12    # "strLyric":Ljava/lang/String;
    :cond_3
    const v9, 0x3d23d70a    # 0.04f

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->stop()V

    .line 655
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 656
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->TAG:Ljava/lang/String;

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mRunnableOnceUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 661
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mRunnableOnceUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 662
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mStarted:Z

    return v0
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 632
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mStarted:Z

    if-eqz v0, :cond_0

    .line 641
    :goto_0
    return-void

    .line 635
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mStarted:Z

    .line 636
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mRepeatScrollType:I

    .line 637
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 638
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 639
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$1700(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setKeepScreenOn(Z)V

    .line 640
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 644
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mStarted:Z

    if-eqz v0, :cond_0

    .line 645
    iput-boolean v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mStarted:Z

    .line 646
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 648
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;->access$1700(Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setKeepScreenOn(Z)V

    .line 649
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/LyricsController$SyncedLyricUpdater;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_0
    return-void
.end method
