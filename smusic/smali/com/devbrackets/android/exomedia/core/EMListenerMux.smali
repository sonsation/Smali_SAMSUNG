.class public Lcom/devbrackets/android/exomedia/core/EMListenerMux;
.super Ljava/lang/Object;
.source "EMListenerMux.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;
    }
.end annotation


# instance fields
.field private bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private clearRequested:Z

.field private clearTextureView:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private completionListener:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private delayedHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private errorListener:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private notifiedCompleted:Z

.field private notifiedPrepared:Z

.field private preparedListener:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;)V
    .locals 3
    .param p1, "notifier"    # Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->delayedHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->clearTextureView:Ljava/lang/ref/WeakReference;

    .line 65
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifiedPrepared:Z

    .line 66
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifiedCompleted:Z

    .line 67
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->clearRequested:Z

    .line 70
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)V
    .locals 0
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->performPreparedHandlerNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->completionListener:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    return-object v0
.end method

.method private notifyCompletionListener()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;->shouldNotifyCompletion(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifiedCompleted:Z

    .line 270
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->delayedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/devbrackets/android/exomedia/core/EMListenerMux$2;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$2;-><init>(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private notifyErrorListener()Z
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->errorListener:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->errorListener:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnErrorListener;->onError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyPreparedListener()V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifiedPrepared:Z

    .line 247
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->delayedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/devbrackets/android/exomedia/core/EMListenerMux$1;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$1;-><init>(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method private performPreparedHandlerNotification()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;->onPrepared()V

    .line 258
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->preparedListener:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->preparedListener:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;->onPrepared()V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public clearSurfaceWhenReady(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;)V
    .locals 1
    .param p1, "textureView"    # Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->clearRequested:Z

    .line 163
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->clearTextureView:Ljava/lang/ref/WeakReference;

    .line 164
    return-void
.end method

.method public isPrepared()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifiedPrepared:Z

    return v0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    invoke-virtual {v0, p2}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;->onBufferUpdated(I)V

    .line 77
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    invoke-interface {v0, p2}, Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;->onBufferingUpdate(I)V

    .line 80
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->completionListener:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->completionListener:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;->onCompletion()V

    .line 87
    :cond_0
    return-void
.end method

.method public onError(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "emExoPlayer"    # Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;->onMediaPlaybackEnded()V

    .line 109
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;->onExoPlayerError(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;Ljava/lang/Exception;)V

    .line 110
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifyErrorListener()Z

    .line 111
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifyErrorListener()Z

    move-result v0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifyPreparedListener()V

    .line 104
    return-void
.end method

.method public onSeekComplete()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;->onSeekComplete()V

    .line 145
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;->onSeekComplete()V

    .line 148
    :cond_0
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;->onSeekComplete()V

    .line 99
    :cond_0
    return-void
.end method

.method public onStateChanged(ZI)V
    .locals 4
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 115
    const/4 v1, 0x5

    if-ne p2, v1, :cond_3

    .line 116
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;->onMediaPlaybackEnded()V

    .line 118
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifiedCompleted:Z

    if-nez v1, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifyCompletionListener()V

    .line 126
    :cond_0
    :goto_0
    if-ne p2, v3, :cond_1

    if-eqz p1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    invoke-virtual {v1, v2}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;->onPreviewImageStateChanged(Z)V

    .line 131
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->clearRequested:Z

    if-eqz v1, :cond_2

    .line 132
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->clearRequested:Z

    .line 133
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->clearTextureView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;

    .line 135
    .local v0, "textureView":Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->clearSurface()V

    .line 137
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->clearTextureView:Ljava/lang/ref/WeakReference;

    .line 140
    .end local v0    # "textureView":Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
    :cond_2
    return-void

    .line 121
    :cond_3
    if-ne p2, v3, :cond_0

    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifiedPrepared:Z

    if-nez v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifyPreparedListener()V

    goto :goto_0
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unAppliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 152
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;->onVideoSizeChanged(IIIF)V

    .line 153
    return-void
.end method

.method public setNotifiedCompleted(Z)V
    .locals 0
    .param p1, "wasNotified"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifiedCompleted:Z

    .line 238
    return-void
.end method

.method public setNotifiedPrepared(Z)V
    .locals 2
    .param p1, "wasNotified"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->notifiedPrepared:Z

    .line 218
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->muxNotifier:Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;->onPreviewImageStateChanged(Z)V

    .line 219
    return-void
.end method

.method public setOnBufferUpdateListener(Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 190
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->bufferUpdateListener:Lcom/devbrackets/android/exomedia/listener/OnBufferUpdateListener;

    .line 191
    return-void
.end method

.method public setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 181
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->completionListener:Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;

    .line 182
    return-void
.end method

.method public setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->errorListener:Lcom/devbrackets/android/exomedia/listener/OnErrorListener;

    .line 209
    return-void
.end method

.method public setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 172
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->preparedListener:Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;

    .line 173
    return-void
.end method

.method public setOnSeekCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 199
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->seekCompletionListener:Lcom/devbrackets/android/exomedia/listener/OnSeekCompletionListener;

    .line 200
    return-void
.end method
