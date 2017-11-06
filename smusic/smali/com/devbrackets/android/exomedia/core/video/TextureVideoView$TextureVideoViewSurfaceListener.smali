.class public Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TextureVideoViewSurfaceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 435
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-boolean v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->start()V

    .line 438
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 457
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 458
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->suspend()V

    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 442
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestedSeek:I

    if-eqz v0, :cond_2

    .line 447
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget v1, v1, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->requestedSeek:I

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->seekTo(I)V

    .line 450
    :cond_2
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    iget-boolean v0, v0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->playRequested:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView$TextureVideoViewSurfaceListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/TextureVideoView;->start()V

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 465
    return-void
.end method
