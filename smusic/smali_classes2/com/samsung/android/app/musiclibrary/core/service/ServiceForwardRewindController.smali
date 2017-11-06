.class final Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;
.super Ljava/lang/Object;
.source "ServiceForwardRewindController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Player"

.field private static final MSG_CLEAR_REPEAT_COUNT:I = 0x2

.field private static final MSG_READY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SV-Player"

.field private static final TIME_SKIP_MIDDLE_INDEX:I = 0x2


# instance fields
.field private mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

.field private mIsForwardRewindReady:Z

.field private final mMessageHandler:Landroid/os/Handler;

.field private final mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

.field private final mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

.field private mRepeatCount:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    .param p2, "player"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mIsForwardRewindReady:Z

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRepeatCount:I

    .line 55
    new-instance v0, Landroid/os/Handler;

    .line 56
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mMessageHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .line 73
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .line 74
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mIsForwardRewindReady:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRepeatCount:I

    return p1
.end method

.method private getSkippingTime()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 78
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRepeatCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mRepeatCount:I

    div-int/lit8 v0, v1, 0x2

    .line 80
    .local v0, "index":I
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;->TIME_VALUE:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 81
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;->TIME_VALUE:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mMessageHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 87
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;->TIME_VALUE:[I

    aget v1, v1, v0

    return v1
.end method

.method private isReady()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mIsForwardRewindReady:Z

    return v0
.end method

.method private isSupportForward()Z
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->isSupportForward()Z

    move-result v0

    return v0
.end method

.method private isSupportRewind()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->isSupportRewind()Z

    move-result v0

    return v0
.end method

.method private isWorking()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method forward()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isSupportForward()Z

    move-result v3

    if-nez v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isGoingToOtherSong()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v2

    .line 144
    .local v2, "state":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 147
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v6

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->getSkippingTime()I

    move-result v3

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 148
    .local v4, "time":J
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->duration()J

    move-result-wide v0

    .line 149
    .local v0, "duration":J
    cmp-long v3, v0, v10

    if-lez v3, :cond_3

    cmp-long v3, v4, v0

    if-lez v3, :cond_3

    .line 150
    const-string v3, "SMUSIC-SV-Player"

    const-string v6, "Try to seek position exceed duration, thus go to next song"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setSupposeToBePlayingPosition(J)V

    .line 154
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->completePlayingInternal(Z)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->seek(J)J

    goto :goto_0
.end method

.method rewind()V
    .locals 15

    .prologue
    const-wide/16 v8, 0x0

    const/4 v14, 0x2

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isSupportRewind()Z

    move-result v5

    if-nez v5, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isReady()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isGoingToOtherSong()Z

    move-result v5

    if-nez v5, :cond_0

    .line 171
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v4

    .line 172
    .local v4, "state":I
    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    if-ne v4, v14, :cond_0

    .line 175
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->position()J

    move-result-wide v10

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->getSkippingTime()I

    move-result v5

    int-to-long v12, v5

    sub-long v6, v10, v12

    .line 176
    .local v6, "time":J
    cmp-long v5, v6, v8

    if-gtz v5, :cond_5

    .line 177
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getRepeat()I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_3

    .line 178
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->seek(J)J

    goto :goto_0

    .line 182
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getPrevItem()Landroid/media/session/MediaSession$QueueItem;

    move-result-object v2

    .line 183
    .local v2, "item":Landroid/media/session/MediaSession$QueueItem;
    if-eqz v2, :cond_5

    .line 186
    invoke-virtual {v2}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v10, "com.google.android.music.mediasession.music_metadata"

    .line 187
    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/media/MediaMetadata;

    .line 188
    .local v3, "meta":Landroid/media/MediaMetadata;
    const-string v5, "android.media.metadata.DURATION"

    invoke-virtual {v3, v5}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 189
    .local v0, "duration":J
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;->TIME_VALUE:[I

    aget v5, v5, v14

    int-to-long v10, v5

    cmp-long v5, v0, v10

    if-lez v5, :cond_4

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;->TIME_VALUE:[I

    aget v5, v5, v14

    int-to-long v8, v5

    sub-long v6, v0, v8

    .line 194
    :goto_1
    const-string v5, "SMUSIC-SV-Player"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rewind() go to prev item, calculated time  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prev duration "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->prev(J)Z

    goto/16 :goto_0

    :cond_4
    move-wide v6, v8

    .line 189
    goto :goto_1

    .line 202
    .end local v0    # "duration":J
    .end local v2    # "item":Landroid/media/session/MediaSession$QueueItem;
    .end local v3    # "meta":Landroid/media/MediaMetadata;
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->seek(J)J

    goto/16 :goto_0
.end method

.method public seek(J)J
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "SMUSIC-SV-Player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seek() pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignore this, our ff/rew task is working now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local p1    # "position":J
    :goto_0
    return-wide p1

    .restart local p1    # "position":J
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->seek(J)J

    move-result-wide p1

    goto :goto_0
.end method

.method startForward()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 91
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->setDirection(I)V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method startRewind()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->isWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->setDirection(I)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method stop()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->setCancel()V

    .line 103
    :cond_0
    return-void
.end method

.method waitReady()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mIsForwardRewindReady:Z

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->stop()V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mMessageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/ServiceForwardRewindController;->mMessageHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    return-void
.end method
