.class public Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;
.super Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;
.source "NativeVideoView.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;


# instance fields
.field protected listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

.field private touchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->setup()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->setup()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->setup()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->setup()V

    .line 64
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
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBufferedPercent()I
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->getBufferPercentage()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "flag":Z
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 73
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onVideoSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 187
    invoke-virtual {p0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->updateVideoSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->requestLayout()V

    .line 190
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public setListenerMux(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)V
    .locals 0
    .param p1, "listenerMux"    # Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    .line 178
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 182
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 183
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->touchListener:Landroid/view/View$OnTouchListener;

    .line 79
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 80
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->setVideoUri(Landroid/net/Uri;Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V

    .line 85
    return-void
.end method

.method public setVideoUri(Landroid/net/Uri;Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "renderBuilder"    # Lcom/devbrackets/android/exomedia/core/builder/RenderBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 90
    return-void
.end method

.method protected setup()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->start()V

    .line 123
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->setNotifiedCompleted(Z)V

    .line 124
    return-void
.end method

.method public stopPlayback()V
    .locals 1

    .prologue
    .line 149
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->stopPlayback()V

    .line 150
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/NativeVideoView;->listenerMux:Lcom/devbrackets/android/exomedia/core/EMListenerMux;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux;->clearSurfaceWhenReady(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;)V

    .line 151
    return-void
.end method
