.class public interface abstract Lcom/google/android/exoplayer/drm/DrmSessionManager;
.super Ljava/lang/Object;
.source "DrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# virtual methods
.method public abstract close()V
.end method

.method public abstract getError()Ljava/lang/Exception;
.end method

.method public abstract getMediaCrypto()Landroid/media/MediaCrypto;
.end method

.method public abstract getState()I
.end method

.method public abstract open(Lcom/google/android/exoplayer/drm/DrmInitData;)V
.end method

.method public abstract requiresSecureDecoderComponent(Ljava/lang/String;)Z
.end method
