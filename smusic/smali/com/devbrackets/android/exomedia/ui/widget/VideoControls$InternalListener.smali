.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
.super Ljava/lang/Object;
.source "VideoControls.java"

# interfaces
.implements Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;
.implements Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InternalListener"
.end annotation


# instance fields
.field protected pausedForSeek:Z

.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V
    .locals 1
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->pausedForSeek:Z

    return-void
.end method


# virtual methods
.method public onFastForwardClicked()Z
    .locals 1

    .prologue
    .line 719
    const/4 v0, 0x0

    return v0
.end method

.method public onNextClicked()Z
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    return v0
.end method

.method public onPlayPauseClicked()Z
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-nez v0, :cond_0

    .line 686
    const/4 v0, 0x0

    .line 695
    :goto_0
    return v0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pause()V

    .line 695
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->start()V

    goto :goto_1
.end method

.method public onPreviousClicked()Z
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public onRewindClicked()Z
    .locals 1

    .prologue
    .line 713
    const/4 v0, 0x0

    return v0
.end method

.method public onSeekEnded(I)Z
    .locals 4
    .param p1, "seekTime"    # I

    .prologue
    const/4 v0, 0x0

    .line 739
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-nez v1, :cond_0

    .line 751
    :goto_0
    return v0

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1, p1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->seekTo(I)V

    .line 745
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->pausedForSeek:Z

    if-eqz v1, :cond_1

    .line 746
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->pausedForSeek:Z

    .line 747
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->start()V

    .line 748
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-wide v2, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    invoke-virtual {v0, v2, v3}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelayed(J)V

    .line 751
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSeekStarted()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 724
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-nez v1, :cond_0

    .line 725
    const/4 v0, 0x0

    .line 734
    :goto_0
    return v0

    .line 728
    :cond_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->pausedForSeek:Z

    .line 730
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pause()V

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->show()V

    goto :goto_0
.end method
