.class public interface abstract Lcom/devbrackets/android/exomedia/core/listener/InternalErrorListener;
.super Ljava/lang/Object;
.source "InternalErrorListener.java"


# virtual methods
.method public abstract onAudioTrackInitializationError(Lcom/google/android/exoplayer/audio/AudioTrack$InitializationException;)V
.end method

.method public abstract onAudioTrackUnderrun(IJJ)V
.end method

.method public abstract onAudioTrackWriteError(Lcom/google/android/exoplayer/audio/AudioTrack$WriteException;)V
.end method

.method public abstract onCryptoError(Landroid/media/MediaCodec$CryptoException;)V
.end method

.method public abstract onDecoderInitializationError(Lcom/google/android/exoplayer/MediaCodecTrackRenderer$DecoderInitializationException;)V
.end method

.method public abstract onDrmSessionManagerError(Ljava/lang/Exception;)V
.end method

.method public abstract onLoadError(ILjava/io/IOException;)V
.end method

.method public abstract onRendererInitializationError(Ljava/lang/Exception;)V
.end method
