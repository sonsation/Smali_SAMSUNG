.class public Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;
.super Ljava/lang/Object;
.source "SoundPlayerController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;


# instance fields
.field private mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

.field private final mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 0
    .param p1, "soundPlayer"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .line 14
    return-void
.end method


# virtual methods
.method public forward()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->forward()V

    .line 72
    return-void
.end method

.method public getBuffering()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getBuffering()I

    move-result v0

    return v0
.end method

.method public getNextTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->getPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrevTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->next()V

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->next()V

    .line 62
    :cond_0
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->prev()V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->prev()V

    .line 54
    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->rewind()V

    .line 67
    return-void
.end method

.method public seek(J)V
    .locals 1
    .param p1, "position"    # J

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->seek(J)V

    .line 77
    return-void
.end method

.method public setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 0
    .param p1, "logger"    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 19
    return-void
.end method

.method public togglePlay()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->pause()V

    .line 45
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->togglePlay()V

    .line 46
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->play()V

    goto :goto_0
.end method
