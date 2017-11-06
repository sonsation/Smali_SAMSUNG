.class public Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;
.super Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;
.source "EMVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MuxNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    .prologue
    .line 732
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-direct {p0}, Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;-><init>()V

    return-void
.end method


# virtual methods
.method public onExoPlayerError(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "emExoPlayer"    # Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->stopPlayback()V

    .line 742
    if-eqz p1, :cond_0

    .line 743
    invoke-virtual {p1}, Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;->forcePrepare()V

    .line 745
    :cond_0
    return-void
.end method

.method public onMediaPlaybackEnded()V
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setKeepScreenOn(Z)V

    .line 750
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->onPlaybackEnded()V

    .line 751
    return-void
.end method

.method public onPrepared()V
    .locals 4

    .prologue
    .line 770
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setDuration(J)V

    .line 772
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->finishLoading()V

    .line 774
    :cond_0
    return-void
.end method

.method public onPreviewImageStateChanged(Z)V
    .locals 2
    .param p1, "toVisible"    # Z

    .prologue
    .line 778
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v1, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->previewImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 781
    :cond_0
    return-void

    .line 779
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onSeekComplete()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoControls:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->finishLoading()V

    .line 758
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unAppliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 764
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->setVideoRotation(IZ)V

    .line 765
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->videoViewImpl:Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;->onVideoSizeChanged(II)V

    .line 766
    return-void
.end method

.method public shouldNotifyCompletion(J)Z
    .locals 5
    .param p1, "endLeeway"    # J

    .prologue
    .line 735
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView$MuxNotifier;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getDuration()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
