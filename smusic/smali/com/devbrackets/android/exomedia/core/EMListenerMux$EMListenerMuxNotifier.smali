.class public abstract Lcom/devbrackets/android/exomedia/core/EMListenerMux$EMListenerMuxNotifier;
.super Ljava/lang/Object;
.source "EMListenerMux.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/core/EMListenerMux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EMListenerMuxNotifier"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferUpdated(I)V
    .locals 0
    .param p1, "percent"    # I

    .prologue
    .line 287
    return-void
.end method

.method public abstract onExoPlayerError(Lcom/devbrackets/android/exomedia/core/exoplayer/EMExoPlayer;Ljava/lang/Exception;)V
.end method

.method public abstract onMediaPlaybackEnded()V
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public onPreviewImageStateChanged(Z)V
    .locals 0
    .param p1, "toVisible"    # Z

    .prologue
    .line 299
    return-void
.end method

.method public onSeekComplete()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onVideoSizeChanged(IIIF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "unAppliedRotationDegrees"    # I
    .param p4, "pixelWidthHeightRatio"    # F

    .prologue
    .line 291
    return-void
.end method

.method public abstract shouldNotifyCompletion(J)Z
.end method
