.class public final Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;
.super Ljava/lang/Object;
.source "LockPlayerPlayingItemText.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayingItemText;


# instance fields
.field private final mArtist:Landroid/widget/TextView;

.field private mArtistText:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mTitle:Landroid/widget/TextView;

.field private mTitleText:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mContext:Landroid/content/Context;

    .line 39
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 41
    invoke-interface {p3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 42
    const v0, 0x7f1200b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f120129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mArtist:Landroid/widget/TextView;

    .line 44
    return-void
.end method

.method private getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mArtistText:Ljava/lang/String;

    return-object v0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mTitleText:Ljava/lang/String;

    return-object v0
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method


# virtual methods
.method changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "o"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 50
    return-void
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 138
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 115
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mTitleText:Ljava/lang/String;

    .line 120
    :goto_0
    const-string v0, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mArtistText:Ljava/lang/String;

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->updateUi()V

    .line 122
    return-void

    .line 118
    :cond_0
    const-string v0, "android.media.metadata.TITLE"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mTitleText:Ljava/lang/String;

    goto :goto_0
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 127
    return-void
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
    .line 133
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onStartCalled()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->setTextScrollEnabled(Z)V

    .line 91
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->setTextScrollEnabled(Z)V

    .line 106
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 73
    return-void
.end method

.method public setTextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method public setTextScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockPlayerPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 61
    return-void
.end method
