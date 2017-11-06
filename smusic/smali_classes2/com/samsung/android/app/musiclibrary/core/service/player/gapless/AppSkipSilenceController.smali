.class public Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;
.super Ljava/lang/Object;
.source "AppSkipSilenceController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_STATE_CHANGED:Ljava/lang/String;

.field private static final EXTRA_REASON_EMERGENCY:Ljava/lang/String; = "reason"

.field private static final GUARANTEE_END_GAP:J = 0x3e8L

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "AppSkipSilence: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"

.field private static final URI_WEB_CONTENTS:Ljava/lang/String; = "http"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mIsActiveSkipSilences:Z

.field private final mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

.field private final mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

.field private mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mSkipSilenceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->ACTION_EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mediaPlayerController"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 76
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 78
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mSkipSilenceReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    const-string v1, "SV-PlayerMedia"

    const-string v2, "AppSkipSilence: constructor"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v0, "f":Landroid/content/IntentFilter;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->ACTION_EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mSkipSilenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->ACTION_EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;)Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilences(ZLjava/lang/String;)V

    return-void
.end method

.method private cancelScheduledExecutor()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 162
    :cond_0
    return-void
.end method

.method private cancelSkipSilenceTimer()V
    .locals 2

    .prologue
    .line 144
    const-string v0, "SMUSIC-SV-PlayerMedia"

    const-string v1, "AppSkipSilence: cancelSkipSilenceTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelScheduledExecutor()V

    .line 146
    return-void
.end method

.method private completePlaying()V
    .locals 6

    .prologue
    .line 110
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getCurrentPosition()J

    move-result-wide v0

    .line 111
    .local v0, "position":J
    const-string v2, "SMUSIC-SV-PlayerMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppSkipSilence:  matched media end. Current position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Targeted position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 112
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playingCompleted()V

    .line 116
    :cond_0
    return-void
.end method

.method private completedPlaying(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->start(Landroid/media/MediaPlayer;)V

    .line 232
    :cond_0
    return-void
.end method

.method private completedPlayingAndSkip(Landroid/media/MediaPlayer;F)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "playSpeed"    # F

    .prologue
    .line 220
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v0

    .line 222
    .local v0, "skipPosition":J
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->skip(J)V

    .line 223
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->start(Landroid/media/MediaPlayer;)V

    .line 224
    long-to-int v2, v0

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilenceTimer(IF)V

    .line 226
    .end local v0    # "skipPosition":J
    :cond_0
    return-void
.end method

.method private disable()V
    .locals 2

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelSkipSilenceTimer()V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setExistNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V

    .line 286
    return-void
.end method

.method private enable(Ljava/lang/String;)V
    .locals 7
    .param p1, "nextPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 251
    if-nez p1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    const-string v1, "SV-PlayerMedia"

    const-string v2, "AppSkipSilence: enable"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "SV-PlayerMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppSkipSilence: enable mNextData.endPosition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->isSupportedMedia(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->processSkipSilence(Ljava/lang/String;)[J

    move-result-object v0

    .line 259
    .local v0, "skipSilencePos":[J
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$502(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 260
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    aget-wide v2, v0, v6

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$402(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 261
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v1, v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z

    .line 264
    .end local v0    # "skipSilencePos":[J
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setExistNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V

    goto :goto_0
.end method

.method private isSupportedMedia(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filepath"    # Ljava/lang/String;

    .prologue
    .line 376
    if-eqz p1, :cond_0

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAndUpdateSkipSilence(Ljava/lang/String;)V
    .locals 5
    .param p1, "nextPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 207
    const-string v1, "SV-PlayerMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppSkipSilence: processAndUpdateSkipSilence nextPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v1, :cond_0

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->isSupportedMedia(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->processSkipSilence(Ljava/lang/String;)[J

    move-result-object v0

    .line 211
    .local v0, "skipSilencePos":[J
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$502(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    aget-wide v2, v0, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$402(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 213
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z

    .line 214
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$702(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z

    .line 217
    .end local v0    # "skipSilencePos":[J
    :cond_0
    return-void
.end method

.method private processSkipSilence(Ljava/lang/String;)[J
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 193
    new-instance v1, Lcom/samsung/android/media/mir/SemSilenceDetector;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/mir/SemSilenceDetector;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "sd":Lcom/samsung/android/media/mir/SemSilenceDetector;
    sget-wide v2, Lcom/samsung/android/media/mir/SemSilenceDetector;->DEFAULT_THRESHOLD:D

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/media/mir/SemSilenceDetector;->getSilencePosition(D)[J

    move-result-object v0

    .line 195
    .local v0, "result":[J
    if-eqz v0, :cond_0

    .line 196
    const-string v2, "SMUSIC-SV-PlayerMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppSkipSilence: processSkipSilence THRESHOLD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/samsung/android/media/mir/SemSilenceDetector;->DEFAULT_THRESHOLD:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " FrontFindPosition : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v0, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "us / RearFindPosition : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-wide v4, v0, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "us"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    aget-wide v2, v0, v6

    div-long/2addr v2, v8

    aput-wide v2, v0, v6

    .line 200
    aget-wide v2, v0, v7

    div-long/2addr v2, v8

    aput-wide v2, v0, v7

    .line 202
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/media/mir/SemSilenceDetector;->release()V

    .line 203
    return-object v0
.end method

.method private release()V
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelSkipSilenceTimer()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mSkipSilenceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    return-void
.end method

.method private setSkipSilenceTimer(IF)V
    .locals 1
    .param p1, "currentPosition"    # I
    .param p2, "playSpeed"    # F

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilenceTimerInternal(IF)V

    .line 122
    :cond_0
    return-void
.end method

.method private setSkipSilenceTimerInternal(IF)V
    .locals 8
    .param p1, "currentPosition"    # I
    .param p2, "playSpeed"    # F

    .prologue
    const-wide/16 v6, 0x0

    .line 125
    const-string v2, "SMUSIC-SV-PlayerMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppSkipSilence: setSkipSilenceTimerInternal currentPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mEndPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 126
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " playSpeed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 128
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    int-to-long v2, p1

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 129
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 130
    :cond_0
    const-string v2, "SMUSIC-SV-PlayerMedia"

    const-string v3, "AppSkipSilence: setSkipSilenceTimerInternal ignore this request. position error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    int-to-long v4, p1

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 135
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    int-to-long v4, p1

    sub-long/2addr v2, v4

    long-to-double v2, v2

    float-to-double v4, p2

    div-double/2addr v2, v4

    double-to-long v0, v2

    .line 137
    .local v0, "triggerAtMillis":J
    const-string v2, "SMUSIC-SV-PlayerMedia"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppSkipSilence: setSkipSilenceTimerInternal triggerAtMillis: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->startScheduledExecutor(J)V

    goto :goto_0
.end method

.method private setSkipSilences(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isOn"    # Z
    .param p2, "nextMediaPath"    # Ljava/lang/String;

    .prologue
    .line 269
    const-string v0, "SMUSIC-SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSkipSilence: setSkipSilences isOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eq v0, p1, :cond_0

    .line 271
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    .line 272
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->enable(Ljava/lang/String;)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->disable()V

    goto :goto_0
.end method

.method private setUpSkipSilence(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentPath"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->clear()V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->clear()V

    .line 173
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setUpSkipSilenceInternal(Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method private setUpSkipSilenceInternal(Ljava/lang/String;)V
    .locals 5
    .param p1, "currentPath"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 178
    const-string v1, "SV-PlayerMedia"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppSkipSilence: setUpSkipSilenceInternal currentPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->isSupportedMedia(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->processSkipSilence(Ljava/lang/String;)[J

    move-result-object v0

    .line 181
    .local v0, "skipSilencePos":[J
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$502(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 182
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    aget-wide v2, v0, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$402(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;J)J

    .line 183
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z

    .line 184
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$702(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;Z)Z

    .line 186
    .end local v0    # "skipSilencePos":[J
    :cond_0
    return-void
.end method

.method private skip(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 236
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->seekTo(J)J

    .line 240
    :cond_0
    return-void
.end method

.method private start(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 248
    :cond_0
    return-void
.end method

.method private startScheduledExecutor(J)V
    .locals 3
    .param p1, "triggerAtMillis"    # J

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelScheduledExecutor()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mScheduler:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 154
    invoke-interface {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 155
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    return v0
.end method

.method public onMediaPlayerStateChanged(ILandroid/os/Bundle;)V
    .locals 11
    .param p1, "mediaPlayerState"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 302
    const-string v0, "SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSkipSilence: onMediaPlayerStateChanged() mediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    packed-switch p1, :pswitch_data_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 305
    :pswitch_0
    const-string v0, "current_file_path"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, "currentFilePath":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setUpSkipSilence(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    .end local v7    # "currentFilePath":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "current_position"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 311
    .local v8, "currentPosition":I
    const-string v0, "play_speed"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 312
    .local v10, "playSpeed":F
    invoke-direct {p0, v8, v10}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilenceTimer(IF)V

    goto :goto_0

    .line 317
    .end local v8    # "currentPosition":I
    .end local v10    # "playSpeed":F
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelSkipSilenceTimer()V

    goto :goto_0

    .line 322
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->release()V

    goto :goto_0

    .line 327
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->skip(J)V

    goto :goto_0

    .line 332
    :pswitch_5
    const-string v0, "next_file_path"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 333
    .local v9, "nextFilePath":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->processAndUpdateSkipSilence(Ljava/lang/String;)V

    goto :goto_0

    .line 336
    .end local v9    # "nextFilePath":Ljava/lang/String;
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->cancelSkipSilenceTimer()V

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    const-string v0, "play_speed"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    .line 341
    .restart local v10    # "playSpeed":F
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mCurrentData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    .line 342
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;)Z

    move-result v6

    .line 341
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->setData(ZJJZ)V

    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mNextData:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$SkipSilenceData;->clear()V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-direct {p0, v0, v10}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->completedPlayingAndSkip(Landroid/media/MediaPlayer;F)V

    goto/16 :goto_0

    .line 346
    .end local v10    # "playSpeed":F
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->completedPlaying(Landroid/media/MediaPlayer;)V

    goto/16 :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSeekTo(J)V
    .locals 3
    .param p1, "whereto"    # J

    .prologue
    .line 356
    const-string v0, "SV-PlayerMedia"

    const-string v1, "AppSkipSilence: onSeekTo()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    long-to-int v0, p1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilenceTimer(IF)V

    .line 360
    :cond_0
    return-void
.end method

.method public onSetSkipSilence(Z)V
    .locals 3
    .param p1, "isOn"    # Z

    .prologue
    .line 364
    const-string v1, "SV-PlayerMedia"

    const-string v2, "AppSkipSilence: onSetSkipSilence()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v0

    .line 366
    .local v0, "nextMediaPlayer":Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;
    if-nez v0, :cond_1

    .line 367
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eq v1, p1, :cond_0

    .line 368
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->setSkipSilences(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->completePlaying()V

    .line 107
    return-void
.end method

.method public setNextMediaplayer(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "next"    # Landroid/media/MediaPlayer;

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mIsActiveSkipSilences:Z

    if-nez v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 298
    :cond_0
    return-void
.end method
