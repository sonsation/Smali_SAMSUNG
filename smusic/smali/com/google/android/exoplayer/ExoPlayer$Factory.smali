.class public final Lcom/google/android/exoplayer/ExoPlayer$Factory;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method public static newInstance(III)Lcom/google/android/exoplayer/ExoPlayer;
    .locals 1
    .param p0, "rendererCount"    # I
    .param p1, "minBufferMs"    # I
    .param p2, "minRebufferMs"    # I

    .prologue
    .line 129
    new-instance v0, Lcom/google/android/exoplayer/ExoPlayerImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/exoplayer/ExoPlayerImpl;-><init>(III)V

    return-object v0
.end method
