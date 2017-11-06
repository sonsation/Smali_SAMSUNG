.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;
.super Ljava/lang/Object;
.source "SeekController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UiUpdater"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;
    }
.end annotation


# static fields
.field private static final FIRST_THREAD_NAME:Ljava/lang/String; = "first_thread"

.field private static final INVALID_POSITION_CURRENT_TIME:Ljava/lang/String; = "--:--"

.field private static final MIN_REFRESH_TIME:J = 0x14L

.field private static final ONE_SECOND:I = 0x3e8

.field private static final SECOND_THREAD_NAME:Ljava/lang/String; = "second_thread"

.field private static final USE_SECOND_THREAD:Z = true


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:J

.field private final mCurrentTimeTextView:Landroid/widget/TextView;

.field private mCurrentTimeUpdatedTime:J

.field private final mDebugUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

.field private mDuration:J

.field private final mDurationTextView:Landroid/widget/TextView;

.field private final mFirstThread:Landroid/os/HandlerThread;

.field private final mFirstThreadHandler:Landroid/os/Handler;

.field private final mFrameCallbackUpdateCurrentTimeText:Landroid/view/Choreographer$FrameCallback;

.field private final mFrameCallbackUpdateDurationText:Landroid/view/Choreographer$FrameCallback;

.field private final mFrameCallbackUpdateProgress:Landroid/view/Choreographer$FrameCallback;

.field private mIsSeeking:Z

.field private mIsStreaming:Z

.field private mPlaySpeed:F

.field private final mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

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
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "seekBar"    # Landroid/widget/SeekBar;
    .param p3, "currentTimeTextView"    # Landroid/widget/TextView;
    .param p4, "durationTextView"    # Landroid/widget/TextView;
    .param p5, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mChoreographer:Landroid/view/Choreographer;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUiUpdateStarted:Z

    .line 240
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mPlaySpeed:F

    .line 244
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUpdateCurrentTimeInterval:J

    .line 408
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateCurrentTime:Ljava/lang/Runnable;

    .line 418
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    .line 446
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    .line 459
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFrameCallbackUpdateCurrentTimeText:Landroid/view/Choreographer$FrameCallback;

    .line 469
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$5;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFrameCallbackUpdateDurationText:Landroid/view/Choreographer$FrameCallback;

    .line 476
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$6;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFrameCallbackUpdateProgress:Landroid/view/Choreographer$FrameCallback;

    .line 248
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "first_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 250
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    .line 253
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "second_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 255
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    .line 261
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mActivity:Landroid/app/Activity;

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    .line 263
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 266
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 267
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    .line 268
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    .line 271
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUiUpdateStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateCurrentTime:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUpdateProgressInterval:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFrameCallbackUpdateProgress:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/view/Choreographer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mIsSeeking:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;
    .param p1, "x1"    # J

    .prologue
    .line 187
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;J)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;
    .param p1, "x1"    # J

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->updateDurationText(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTimeUpdatedTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->updateCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mPlaySpeed:F

    return v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mIsStreaming:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method private startUpdateBufferingProgress()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateBufferingProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateCurrentTime()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 388
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    .line 389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTimeUpdatedTime:J

    .line 390
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->setUpdateCurrentTime(J)V

    .line 394
    :cond_0
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDuration:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_1

    .line 395
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mChoreographer:Landroid/view/Choreographer;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFrameCallbackUpdateCurrentTimeText:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 400
    :cond_1
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUpdateCurrentTimeInterval:J

    .line 401
    .local v0, "nextUpdateTime":J
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUpdateCurrentTimeInterval:J

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 402
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUpdateCurrentTimeInterval:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 403
    const-wide/16 v0, 0x0

    .line 405
    :cond_2
    return-wide v0
.end method

.method private updateDurationText(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    const-wide/16 v0, 0x0

    .line 559
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 567
    :goto_0
    return-void

    .line 563
    :cond_0
    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    const-wide/16 v2, 0x3e8

    div-long v0, p1, v2

    .line 564
    .local v0, "secs":J
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    long-to-int v4, v0

    .line 566
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getDurationDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 565
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method getCurrentTime()J
    .locals 2

    .prologue
    .line 367
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    return-wide v0
.end method

.method getDuration()J
    .locals 2

    .prologue
    .line 371
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDuration:J

    return-wide v0
.end method

.method getDurationTimeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDurationTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isSeeking()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mIsSeeking:Z

    return v0
.end method

.method quit()V
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->stop()V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 308
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 311
    :cond_0
    return-void
.end method

.method setIsSeeking(Z)V
    .locals 0
    .param p1, "isSeeking"    # Z

    .prologue
    .line 379
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mIsSeeking:Z

    .line 380
    return-void
.end method

.method start()V
    .locals 2

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUiUpdateStarted:Z

    if-eqz v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUiUpdateStarted:Z

    .line 280
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateCurrentTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateCurrentTime:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mIsStreaming:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->startUpdateBufferingProgress()V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mRunnableUpdateCurrentProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUiUpdateStarted:Z

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFirstThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSecondThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 303
    :cond_0
    return-void
.end method

.method updateCurrentSongInfo(Z)V
    .locals 2
    .param p1, "isStreaming"    # Z

    .prologue
    .line 319
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mIsStreaming:Z

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 322
    return-void
.end method

.method updateCurrentTimeText(J)V
    .locals 9
    .param p1, "msec"    # J

    .prologue
    const/4 v8, 0x0

    .line 526
    const-wide/16 v6, 0x3e8

    div-long v2, p1, v6

    .line 533
    .local v2, "sec":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->makeTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "currentTimeString":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 542
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 543
    .local v0, "currentTimeParent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 547
    .end local v0    # "currentTimeParent":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    const-string v5, "-"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 551
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mContext:Landroid/content/Context;

    sget v6, Lcom/samsung/android/app/musiclibrary/R$string;->tts_seconds:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 555
    .local v4, "talkBack":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 556
    return-void

    .line 533
    .end local v1    # "currentTimeString":Ljava/lang/String;
    .end local v4    # "talkBack":Ljava/lang/String;
    :cond_1
    const-string v1, "--:--"

    goto :goto_0

    .line 553
    .restart local v1    # "currentTimeString":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mContext:Landroid/content/Context;

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

    .line 325
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDuration:J

    .line 326
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDuration:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUpdateProgressInterval:J

    .line 327
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUpdateProgressInterval:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 328
    iput-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUpdateProgressInterval:J

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    if-eqz v0, :cond_1

    .line 331
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDebugUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mDuration:J

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUpdateProgressInterval:J

    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mIsStreaming:Z

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater$DebugUiUpdater;->setUpdateDurationRelatedInfo(JJZ)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mFrameCallbackUpdateDurationText:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 336
    return-void
.end method

.method updatePlaySpeed(F)V
    .locals 2
    .param p1, "playSpeed"    # F

    .prologue
    .line 314
    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    float-to-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mUpdateCurrentTimeInterval:J

    .line 315
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mPlaySpeed:F

    .line 316
    return-void
.end method

.method updateUiImmediate(J)V
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 339
    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    .line 340
    .end local p1    # "currentTime":J
    :goto_0
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTimeUpdatedTime:J

    .line 342
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->updateCurrentTimeText(J)V

    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->getDuration()J

    move-result-wide v0

    .line 344
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 345
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    const-wide/16 v4, 0x3e8

    iget-wide v6, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mCurrentTime:J

    mul-long/2addr v4, v6

    div-long/2addr v4, v0

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 351
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mIsStreaming:Z

    if-eqz v2, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->startUpdateBufferingProgress()V

    .line 354
    :cond_0
    return-void

    .line 339
    .end local v0    # "duration":J
    .restart local p1    # "currentTime":J
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 340
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide p1

    goto :goto_0

    .line 348
    .end local p1    # "currentTime":J
    .restart local v0    # "duration":J
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_1
.end method
