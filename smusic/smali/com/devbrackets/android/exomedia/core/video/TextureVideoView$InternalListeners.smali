.class public Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListeners"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iput p2, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentBufferPercent:I

    .line 371
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    .line 374
    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 378
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->COMPLETED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v1, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 379
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 382
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 393
    const-string v0, "TextureVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->ERROR:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v1, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 396
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    sget-object v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;->PREPARED:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    iput-object v1, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->currentState:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$State;

    .line 403
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->updateVideoSize(II)Z

    .line 409
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestedSeek:I

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget v1, v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestedSeek:I

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->seekTo(I)V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-boolean v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    if-eqz v0, :cond_2

    .line 414
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->start()V

    .line 416
    :cond_2
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnSeekCompleteListener;->onSeekComplete(Landroid/media/MediaPlayer;)V

    .line 389
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->updateVideoSize(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$InternalListeners;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestLayout()V

    .line 428
    :cond_0
    return-void
.end method
