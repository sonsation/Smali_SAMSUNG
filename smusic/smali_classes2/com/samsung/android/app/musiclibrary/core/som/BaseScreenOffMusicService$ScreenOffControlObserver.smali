.class final Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;
.super Ljava/lang/Object;
.source "BaseScreenOffMusicService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ScreenOffControlObserver"
.end annotation


# instance fields
.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

.field private mState:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "screenOffMusicHandler"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;
    .param p2, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mState:I

    .line 548
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    .line 549
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 550
    return-void
.end method


# virtual methods
.method changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 585
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 586
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 587
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 588
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 582
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 554
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 558
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    .line 559
    .local v0, "state":I
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 572
    :goto_1
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mState:I

    goto :goto_0

    .line 565
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOffTimeOut()V

    goto :goto_1

    .line 568
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/BaseScreenOffMusicService$ScreenOffControlObserver;->mScreenOffMusicHandler:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOff(Z)V

    goto :goto_1

    .line 562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 578
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method
