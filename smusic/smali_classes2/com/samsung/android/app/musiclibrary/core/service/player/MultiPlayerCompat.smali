.class public Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCompat;
.super Ljava/lang/Object;
.source "MultiPlayerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Landroid/media/MediaPlayer;
    .locals 2
    .param p0, "player"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->getPlayerController()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    move-result-object v0

    .line 8
    .local v0, "controller":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    if-eqz v1, :cond_0

    .line 9
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .end local v0    # "controller":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getMediaPlayer()Landroid/media/MediaPlayer;

    move-result-object v1

    .line 11
    :goto_0
    return-object v1

    .restart local v0    # "controller":Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
