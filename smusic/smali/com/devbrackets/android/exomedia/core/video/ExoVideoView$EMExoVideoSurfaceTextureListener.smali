.class public Lcom/devbrackets/android/exomedia/core/video/ExoVideoView$EMExoVideoSurfaceTextureListener;
.super Ljava/lang/Object;
.source "ExoVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EMExoVideoSurfaceTextureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView$EMExoVideoSurfaceTextureListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;

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
    .line 276
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView$EMExoVideoSurfaceTextureListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 277
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView$EMExoVideoSurfaceTextureListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;

    iget-boolean v0, v0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->playRequested:Z

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView$EMExoVideoSurfaceTextureListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->setPlayWhenReady(Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView$EMExoVideoSurfaceTextureListener;->this$0:Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/core/video/ExoVideoView;->emExoPlayer:Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->blockingClearSurface()V

    .line 285
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 293
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 298
    return-void
.end method
