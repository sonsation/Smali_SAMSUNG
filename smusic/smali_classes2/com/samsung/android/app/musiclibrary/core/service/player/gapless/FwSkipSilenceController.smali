.class public Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;
.super Ljava/lang/Object;
.source "FwSkipSilenceController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-PlayerMedia"

.field private static final SUB_TAG:Ljava/lang/String; = "FwSkipSilence: "

.field private static final TAG:Ljava/lang/String; = "SV-PlayerMedia"


# instance fields
.field private mIsActiveSkipSilences:Z

.field private final mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V
    .locals 0
    .param p1, "mediaPlayerController"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 24
    return-void
.end method

.method private setMediaplayerParameter(Landroid/media/MediaPlayer;I)V
    .locals 5
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "parameter"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-eqz p1, :cond_0

    .line 82
    const-string v3, "SV-PlayerMedia"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FwSkipSilence: setMediaplayerParameter() "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1, p2, v1}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    .line 85
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 82
    goto :goto_0

    :cond_2
    move v1, v2

    .line 83
    goto :goto_1
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    return v0
.end method

.method public onMediaPlayerStateChanged(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "mediaPlayerState"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x88ba

    .line 38
    const-string v0, "SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FwSkipSilence: onMediaPlayerStateChanged() mediaPlayerState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    packed-switch p1, :pswitch_data_0

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->setMediaplayerParameter(Landroid/media/MediaPlayer;I)V

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 48
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->setMediaplayerParameter(Landroid/media/MediaPlayer;I)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onSeekTo(J)V
    .locals 0
    .param p1, "whereto"    # J

    .prologue
    .line 60
    return-void
.end method

.method public onSetSkipSilence(Z)V
    .locals 4
    .param p1, "isOn"    # Z

    .prologue
    const v3, 0x88ba

    .line 64
    const-string v0, "SV-PlayerMedia"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FwSkipSilence: onSetSkipSilence() isOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    if-eq v0, p1, :cond_1

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mIsActiveSkipSilences:Z

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 68
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->setMediaplayerParameter(Landroid/media/MediaPlayer;I)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 73
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->setMediaplayerParameter(Landroid/media/MediaPlayer;I)V

    .line 78
    :cond_1
    return-void
.end method

.method public setNextMediaplayer(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "next"    # Landroid/media/MediaPlayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/FwSkipSilenceController;->mMediaPlayerController:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 34
    return-void
.end method
