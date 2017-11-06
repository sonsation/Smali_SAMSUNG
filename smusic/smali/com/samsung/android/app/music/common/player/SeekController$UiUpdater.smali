.class Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;
.super Ljava/lang/Object;
.source "SeekController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;
    }
.end annotation


# static fields
.field private static final FIRST_THREAD_NAME:Ljava/lang/String; = "first_thread"

.field private static final INVALID_TIME:Ljava/lang/String; = "--:--"

.field private static final MIN_REFRESH_TIME:J = 0x14L

.field private static final ONE_SECOND:I = 0x3e8

.field private static final SECOND_THREAD_NAME:Ljava/lang/String; = "second_thread"

.field private static final USE_SECOND_THREAD:Z = true


# instance fields
.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private final mCurrentTimeTextView:Landroid/widget/TextView;

.field private mCurrentTimeUpdatedTime:J

.field private final mDebugUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

.field private mDuration:J

.field private final mDurationTextView:Landroid/widget/TextView;

.field private final mFirstThread:Landroid/os/HandlerThread;

.field private final mFirstThreadHandler:Landroid/os/Handler;

.field private final mFrameCallbackUpdateCurrentTimeText:Landroid/view/Choreographer$FrameCallback;

.field private final mFrameCallbackUpdateDurationText:Landroid/view/Choreographer$FrameCallback;

.field private final mFrameCallbackUpdateProgress:Landroid/view/Choreographer$FrameCallback;

.field private mIsCustomDrawingProgress:Z

.field private mIsStreaming:Z

.field private mPlaySpeed:F

.field private final mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private mPlayerType:I

.field private final mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

.field private final mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

.field private final mRunnableUpdateCurrentTime:Ljava/lang/Runnable;

.field private final mSecondThread:Landroid/os/HandlerThread;

.field private final mSecondThreadHandler:Landroid/os/Handler;

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private mUiUpdateStarted:Z

.field private mUpdateCurrentTimeInterval:J

.field private mUpdateProgressInterval:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "seekBar"    # Landroid/widget/SeekBar;
    .param p3, "currentTimeTextView"    # Landroid/widget/TextView;
    .param p4, "durationTextView"    # Landroid/widget/TextView;
    .param p5, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mChoreographer:Landroid/view/Choreographer;

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUiUpdateStarted:Z

    .line 451
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mPlaySpeed:F

    .line 455
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUpdateCurrentTimeInterval:J

    .line 625
    new-instance v0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$1;-><init>(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateCurrentTime:Ljava/lang/Runnable;

    .line 635
    new-instance v0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$2;-><init>(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    .line 657
    new-instance v0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$3;-><init>(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    .line 670
    new-instance v0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$4;-><init>(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFrameCallbackUpdateCurrentTimeText:Landroid/view/Choreographer$FrameCallback;

    .line 681
    new-instance v0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$5;-><init>(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFrameCallbackUpdateDurationText:Landroid/view/Choreographer$FrameCallback;

    .line 689
    new-instance v0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$6;-><init>(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFrameCallbackUpdateProgress:Landroid/view/Choreographer$FrameCallback;

    .line 461
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "first_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    .line 462
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 463
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    .line 466
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "second_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 468
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    .line 474
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    .line 475
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 478
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 479
    iput-object p4, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    .line 480
    iput-object p5, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    .line 483
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUpdateProgressInterval:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFrameCallbackUpdateProgress:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mIsCustomDrawingProgress:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;
    .param p1, "x1"    # J

    .prologue
    .line 400
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;J)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;
    .param p1, "x1"    # J

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateDurationText(J)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTimeUpdatedTime:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mPlaySpeed:F

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUiUpdateStarted:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateCurrentTime:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mIsStreaming:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object v0
.end method

.method private startUpdateBufferingProgress()V
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 574
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 577
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateCurrentTime()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 603
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    .line 604
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTimeUpdatedTime:J

    .line 605
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    if-eqz v2, :cond_0

    .line 606
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->setUpdateCurrentTime(J)V

    .line 609
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDuration:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 610
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mChoreographer:Landroid/view/Choreographer;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFrameCallbackUpdateCurrentTimeText:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 615
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUpdateCurrentTimeInterval:J

    .line 616
    .local v0, "nextUpdateTime":J
    iget v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mPlayerType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 617
    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUpdateCurrentTimeInterval:J

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 618
    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUpdateCurrentTimeInterval:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 619
    const-wide/16 v0, 0x0

    .line 622
    :cond_2
    return-wide v0
.end method

.method private updateDurationText(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    .line 772
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 786
    :goto_0
    return-void

    .line 776
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 777
    long-to-double v2, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    .line 778
    .local v0, "secs":J
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    long-to-int v4, v0

    .line 780
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 779
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 782
    .end local v0    # "secs":J
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    const-string v3, "--:--"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    .line 784
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentTime()J
    .locals 2

    .prologue
    .line 582
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    return-wide v0
.end method

.method getDuration()J
    .locals 2

    .prologue
    .line 586
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDuration:J

    return-wide v0
.end method

.method getDurationTimeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isCustomDrawingProgress()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mIsCustomDrawingProgress:Z

    return v0
.end method

.method quit()V
    .locals 1

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->stop()V

    .line 523
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 527
    :cond_0
    return-void
.end method

.method setIsCustomDrawingProgress(Z)V
    .locals 0
    .param p1, "isCustomDrawing"    # Z

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mIsCustomDrawingProgress:Z

    .line 595
    return-void
.end method

.method setPlayerType(I)V
    .locals 0
    .param p1, "playerType"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mPlayerType:I

    .line 487
    return-void
.end method

.method start()V
    .locals 2

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUiUpdateStarted:Z

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUiUpdateStarted:Z

    .line 496
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateCurrentTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 497
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateCurrentTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mIsStreaming:Z

    if-eqz v0, :cond_0

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->startUpdateBufferingProgress()V

    goto :goto_0

    .line 503
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUiUpdateStarted:Z

    .line 514
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 516
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 519
    :cond_0
    return-void
.end method

.method updateCurrentSongInfo(Z)V
    .locals 2
    .param p1, "isStreaming"    # Z

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mIsStreaming:Z

    .line 537
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 538
    return-void
.end method

.method updateCurrentTimeText(J)V
    .locals 9
    .param p1, "msec"    # J

    .prologue
    const/4 v8, 0x0

    .line 740
    const-wide/16 v6, 0x3e8

    div-long v2, p1, v6

    .line 747
    .local v2, "sec":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/samsung/android/app/music/common/util/UiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 754
    .local v1, "currentTimeString":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 755
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 756
    .local v0, "currentTimeParent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 760
    .end local v0    # "currentTimeParent":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 764
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    const v6, 0x7f0a01f8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 768
    .local v4, "talkBack":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 769
    return-void

    .line 747
    .end local v1    # "currentTimeString":Ljava/lang/String;
    .end local v4    # "talkBack":Ljava/lang/String;
    :cond_1
    const-string v1, "--:--"

    goto :goto_0

    .line 766
    .restart local v1    # "currentTimeString":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    long-to-int v6, v2

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "talkBack":Ljava/lang/String;
    goto :goto_1
.end method

.method updateDurationRelatedInfo(J)V
    .locals 7
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v4, 0x14

    .line 541
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDuration:J

    .line 542
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUpdateProgressInterval:J

    .line 543
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUpdateProgressInterval:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 544
    iput-wide v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUpdateProgressInterval:J

    .line 546
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    if-eqz v0, :cond_1

    .line 547
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mDuration:J

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUpdateProgressInterval:J

    iget-boolean v6, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mIsStreaming:Z

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater$DebugUiUpdater;->setUpdateDurationRelatedInfo(JJZ)V

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mFrameCallbackUpdateDurationText:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 552
    return-void
.end method

.method updatePlaySpeed(F)V
    .locals 2
    .param p1, "playSpeed"    # F

    .prologue
    .line 530
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mUpdateCurrentTimeInterval:J

    .line 531
    iput p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mPlaySpeed:F

    .line 532
    return-void
.end method

.method updateUiImmediate(J)V
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 555
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 556
    .end local p1    # "currentTime":J
    :goto_0
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    .line 557
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTimeUpdatedTime:J

    .line 558
    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateCurrentTimeText(J)V

    .line 559
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->getDuration()J

    move-result-wide v0

    .line 560
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 561
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    const-wide/16 v4, 0x3e8

    iget-wide v6, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mCurrentTime:J

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 566
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mIsStreaming:Z

    if-eqz v2, :cond_0

    .line 567
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->startUpdateBufferingProgress()V

    .line 569
    :cond_0
    return-void

    .line 555
    .end local v0    # "duration":J
    .restart local p1    # "currentTime":J
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 556
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide p1

    goto :goto_0

    .line 563
    .end local p1    # "currentTime":J
    .restart local v0    # "duration":J
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method
