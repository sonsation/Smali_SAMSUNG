.class public interface abstract Lcom/google/android/exoplayer/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;,
        Lcom/google/android/exoplayer/ExoPlayer$Listener;,
        Lcom/google/android/exoplayer/ExoPlayer$Factory;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/exoplayer/ExoPlayer$Listener;)V
.end method

.method public abstract blockingSendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
.end method

.method public abstract getBufferedPercentage()I
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()J
.end method

.method public abstract getPlayWhenReady()Z
.end method

.method public abstract getPlaybackLooper()Landroid/os/Looper;
.end method

.method public abstract getPlaybackState()I
.end method

.method public abstract getSelectedTrack(I)I
.end method

.method public abstract getTrackCount(I)I
.end method

.method public abstract getTrackFormat(II)Lcom/google/android/exoplayer/MediaFormat;
.end method

.method public varargs abstract prepare([Lcom/google/android/exoplayer/TrackRenderer;)V
.end method

.method public abstract release()V
.end method

.method public abstract seekTo(J)V
.end method

.method public abstract sendMessage(Lcom/google/android/exoplayer/ExoPlayer$ExoPlayerComponent;ILjava/lang/Object;)V
.end method

.method public abstract setPlayWhenReady(Z)V
.end method

.method public abstract setSelectedTrack(II)V
.end method

.method public abstract stop()V
.end method
