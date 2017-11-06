.class public Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;
.super Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;
.source "EMMediaCodecAudioTrackRenderer.java"


# instance fields
.field private audioSessionId:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V
    .locals 1
    .param p1, "source"    # Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .param p7, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .param p8, "streamType"    # I

    .prologue
    .line 50
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>(Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 51
    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V
    .locals 1
    .param p1, "sources"    # [Lcom/google/android/exoplayer/SampleSource;
    .param p2, "mediaCodecSelector"    # Lcom/google/android/exoplayer/MediaCodecSelector;
    .param p3, "drmSessionManager"    # Lcom/google/android/exoplayer/drm/DrmSessionManager;
    .param p4, "playClearSamplesWithoutKeys"    # Z
    .param p5, "eventHandler"    # Landroid/os/Handler;
    .param p6, "eventListener"    # Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;
    .param p7, "audioCapabilities"    # Lcom/google/android/exoplayer/audio/AudioCapabilities;
    .param p8, "streamType"    # I

    .prologue
    .line 54
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;-><init>([Lcom/google/android/exoplayer/SampleSource;Lcom/google/android/exoplayer/MediaCodecSelector;Lcom/google/android/exoplayer/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer$EventListener;Lcom/google/android/exoplayer/audio/AudioCapabilities;I)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 55
    return-void
.end method


# virtual methods
.method protected onAudioSessionId(I)V
    .locals 0
    .param p1, "audioSessionId"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/devbrackets/android/exomedia/core/renderer/EMMediaCodecAudioTrackRenderer;->audioSessionId:I

    .line 60
    invoke-super {p0, p1}, Lcom/google/android/exoplayer/MediaCodecAudioTrackRenderer;->onAudioSessionId(I)V

    .line 61
    return-void
.end method
