.class public interface abstract Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;
.super Ljava/lang/Object;
.source "ISkipSilenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController$BundleArgs;,
        Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController$MediaPlayerState;
    }
.end annotation


# virtual methods
.method public abstract isActive()Z
.end method

.method public abstract onMediaPlayerStateChanged(ILandroid/os/Bundle;)V
.end method

.method public abstract onSeekTo(J)V
.end method

.method public abstract onSetSkipSilence(Z)V
.end method

.method public abstract setNextMediaplayer(Landroid/media/MediaPlayer;)V
.end method
