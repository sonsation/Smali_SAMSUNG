.class public Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;
.super Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
.source "ExoVideoView.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;
.implements Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/ExoVideoView$EMExoVideoSurfaceTextureListener;
    }
.end annotation


# instance fields
.field protected audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

.field protected audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

.field protected emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

.field protected listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

.field protected playRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->playRequested:Z

    .line 67
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->setup()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->playRequested:Z

    .line 72
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->setup()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->playRequested:Z

    .line 77
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->setup()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->playRequested:Z

    .line 82
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->setup()V

    .line 83
    return-void
.end method


# virtual methods
.method public getAvailableTracks()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/exoplayer/MediaFormat;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getAvailableTracks()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 168
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method protected getRendererBuilder(Lcom/devbrackets/android/exomedia/type/MediaSourceType;Landroid/net/Uri;)Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
    .locals 4
    .param p1, "renderType"    # Lcom/devbrackets/android/exomedia/type/MediaSourceType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 251
    sget-object v0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView$1;->$SwitchMap$com$devbrackets$android$exomedia$type$MediaSourceType:[I

    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/type/MediaSourceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 259
    new-instance v0, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 253
    :pswitch_0
    new-instance v0, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/devbrackets/android/exomedia/core/builder/HlsRenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :pswitch_1
    new-instance v0, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/devbrackets/android/exomedia/core/builder/DashRenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :pswitch_2
    new-instance v0, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/devbrackets/android/exomedia/core/builder/SmoothStreamRenderBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    const-string v0, "EMVideoView %s / Android %s / %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3.0.1 (30100)"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public onAudioCapabilitiesChanged(Lcom/google/android/exoplayer/audio/AudioCapabilities;)V
    .locals 1
    .param p1, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer/audio/AudioCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->audioCapabilities:Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 206
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->updateVideoSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->requestLayout()V

    .line 229
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->setPlayWhenReady(Z)V

    .line 146
    iput-boolean v1, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->playRequested:Z

    .line 147
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->release()V

    .line 212
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->unregister()V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 216
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 4
    .param p1, "milliseconds"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 128
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->seekTo(J)V

    .line 129
    return-void
.end method

.method public setListenerMux(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)V
    .locals 1
    .param p1, "listenerMux"    # Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    .line 221
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->addListener(Lcom/devbrackets/android/exomedia/core/listener/ExoPlayerListener;)V

    .line 222
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 87
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 88
    .local v0, "builder":Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->setVideoUri(Landroid/net/Uri;Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V

    .line 89
    return-void

    .line 87
    .end local v0    # "builder":Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
    :cond_0
    invoke-static {p1}, Lcom/devbrackets/android/exomedia/util/MediaSourceUtil;->getType(Landroid/net/Uri;)Lcom/devbrackets/android/exomedia/type/MediaSourceType;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->getRendererBuilder(Lcom/devbrackets/android/exomedia/type/MediaSourceType;Landroid/net/Uri;)Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;

    move-result-object v0

    goto :goto_0
.end method

.method public setVideoUri(Landroid/net/Uri;Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "renderBuilder"    # Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 93
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->playRequested:Z

    .line 95
    if-nez p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->replaceRenderBuilder(Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->setNotifiedPrepared(Z)V

    .line 104
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->seekTo(J)V

    .line 105
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0, p2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->replaceRenderBuilder(Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V

    .line 99
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->setNotifiedCompleted(Z)V

    goto :goto_0
.end method

.method protected setup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 232
    new-instance v0, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver$Listener;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    .line 233
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->audioCapabilitiesReceiver:Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {v0}, Lcom/google/android/exoplayer/audio/AudioCapabilitiesReceiver;->register()Lcom/google/android/exoplayer/audio/AudioCapabilities;

    .line 234
    new-instance v0, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-direct {v0, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;-><init>(Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    .line 237
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0, v3}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->setMetadataListener(Lcom/devbrackets/android/exomedia/core/listener/Id3MetadataListener;)V

    .line 238
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView$EMExoVideoSurfaceTextureListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView$EMExoVideoSurfaceTextureListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;)V

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 240
    invoke-virtual {p0, v2, v2}, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->updateVideoSize(II)Z

    .line 241
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 138
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->setPlayWhenReady(Z)V

    .line 139
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->setNotifiedCompleted(Z)V

    .line 140
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->playRequested:Z

    .line 141
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->stop()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->playRequested:Z

    .line 153
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->clearSurfaceWhenReady(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;)V

    .line 154
    return-void
.end method
