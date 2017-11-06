.class public Lcom/samsung/android/app/music/common/RadioPlayerController;
.super Ljava/lang/Object;
.source "RadioPlayerController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;


# instance fields
.field private mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTitleInternal(I)Ljava/lang/String;
    .locals 8
    .param p0, "position"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 99
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v2

    .line 100
    .local v2, "data":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicQueue()Ljava/util/List;

    move-result-object v5

    .line 101
    .local v5, "q":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 102
    const/4 v6, 0x0

    .line 115
    :goto_0
    return-object v6

    .line 104
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 105
    .local v3, "extras":Landroid/os/Bundle;
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    const/4 v7, 0x1

    invoke-direct {v0, v5, v3, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    .line 106
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;
    const-string v7, "extra.list_position"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getOrderedPosition(I)I

    move-result v1

    .line 107
    .local v1, "current":I
    add-int v4, v1, p0

    .line 108
    .local v4, "nextPosition":I
    if-lez p0, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getCount()I

    move-result v7

    if-lt v4, v7, :cond_1

    const/4 v4, 0x0

    .end local v4    # "nextPosition":I
    :cond_1
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->moveToPosition(I)Z

    .line 113
    :goto_1
    const-string/jumbo v7, "title"

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "title":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->close()V

    goto :goto_0

    .line 111
    .end local v6    # "title":Ljava/lang/String;
    .restart local v4    # "nextPosition":I
    :cond_2
    if-gez v4, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->getCount()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .end local v4    # "nextPosition":I
    :cond_3
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;->moveToPosition(I)Z

    goto :goto_1
.end method


# virtual methods
.method public forward()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public getBuffering()I
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->buffering()I

    move-result v0

    return v0
.end method

.method public getNextTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/android/app/music/common/RadioPlayerController;->getTitleInternal(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPrevTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isRadioPlaying()Z

    move-result v0

    return v0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playNextRadio()V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/common/RadioPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/RadioPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->next()V

    .line 67
    :cond_0
    return-void
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playPrevRadio(Z)V

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/RadioPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/common/RadioPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->prev()V

    .line 59
    :cond_0
    return-void
.end method

.method public rewind()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public seek(J)V
    .locals 0
    .param p1, "position"    # J

    .prologue
    .line 82
    return-void
.end method

.method public setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 0
    .param p1, "logger"    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/common/RadioPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 24
    return-void
.end method

.method public togglePlay()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/common/RadioPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/RadioPlayerController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/common/RadioPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->pause()V

    .line 50
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->togglePlayRadio()V

    .line 51
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/RadioPlayerController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->play()V

    goto :goto_0
.end method
