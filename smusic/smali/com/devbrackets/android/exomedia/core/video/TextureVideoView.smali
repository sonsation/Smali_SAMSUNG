.class public Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;
.super Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;,
        Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;,
        Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;
    }
.end annotation


# instance fields
.field protected currentBufferPercent:I

.field protected currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

.field protected headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mediaPlayer:Landroid/media/MediaPlayer;

.field protected onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected playRequested:Z

.field protected requestedSeek:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;)V

    .line 63
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    .line 71
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;-><init>(Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    .line 71
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;-><init>(Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    .line 71
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;-><init>(Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    .line 71
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;-><init>(Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method


# virtual methods
.method public canPause()Z
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PREPARED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PLAYING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSeekBackward()Z
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PREPARED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PLAYING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PAUSED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSeekForward()Z
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PREPARED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PLAYING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PAUSED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 165
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentBufferPercent:I

    .line 168
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 144
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initMediaPlayer()V
    .locals 2

    .prologue
    .line 352
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 354
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 355
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 356
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 357
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 358
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 359
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 360
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 362
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 363
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 364
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReady()Z
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PREPARING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected openVideo(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 320
    if-nez p1, :cond_0

    .line 337
    :goto_0
    return-void

    .line 324
    :cond_0
    iput v4, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentBufferPercent:I

    .line 327
    :try_start_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 328
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 330
    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PREPARING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v1, "TextureVideoView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 335
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->internalListeners:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_0

    .line 331
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 123
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PAUSED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 126
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    .line 127
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestedSeek:I

    .line 155
    :goto_0
    return-void

    .line 153
    :cond_0
    iput p1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestedSeek:I

    goto :goto_0
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 276
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 277
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 266
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 267
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 298
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 299
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 308
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 309
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 256
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 257
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 286
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 287
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 227
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 240
    iput-object p2, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->headers:Ljava/util/Map;

    .line 241
    iput v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestedSeek:I

    .line 242
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    .line 244
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->openVideo(Landroid/net/Uri;)V

    .line 245
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestLayout()V

    .line 246
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->invalidate()V

    .line 247
    return-void
.end method

.method protected setup(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 340
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->initMediaPlayer()V

    .line 341
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;)V

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 343
    invoke-virtual {p0, v2}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->setFocusable(Z)V

    .line 344
    invoke-virtual {p0, v2}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->setFocusableInTouchMode(Z)V

    .line 345
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestFocus()Z

    .line 347
    invoke-virtual {p0, v1, v1}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->updateVideoSize(II)Z

    .line 348
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 349
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 112
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestFocus()Z

    .line 113
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PLAYING:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 116
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    .line 117
    return-void
.end method

.method public stopPlayback()V
    .locals 3

    .prologue
    .line 190
    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 192
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    .line 201
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TextureVideoView"

    const-string/jumbo v2, "stopPlayback: error calling mediaPlayer.stop()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public suspend()V
    .locals 3

    .prologue
    .line 208
    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->IDLE:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 211
    :try_start_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 212
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    .line 218
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TextureVideoView"

    const-string/jumbo v2, "stopPlayback: error calling mediaPlayer.reset() or mediaPlayer.release()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
