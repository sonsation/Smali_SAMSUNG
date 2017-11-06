.class public interface abstract Lcom/devbrackets/android/exomedia/core/api/VideoViewApi;
.super Ljava/lang/Object;
.source "VideoViewApi.java"


# virtual methods
.method public abstract getAvailableTracks()Ljava/util/Map;
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
.end method

.method public abstract getBufferedPercent()I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x64L
    .end annotation
.end method

.method public abstract getCurrentPosition()I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract getDuration()I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract onVideoSizeChanged(II)V
.end method

.method public abstract pause()V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method

.method public abstract setListenerMux(Lcom/devbrackets/android/exomedia/core/EMListenerMux;)V
.end method

.method public abstract setMeasureBasedOnAspectRatioEnabled(Z)V
.end method

.method public abstract setOnTouchListener(Landroid/view/View$OnTouchListener;)V
.end method

.method public abstract setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V
    .param p1    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setVideoRotation(IZ)V
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
.end method

.method public abstract setVideoUri(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract start()V
.end method

.method public abstract stopPlayback()V
.end method
