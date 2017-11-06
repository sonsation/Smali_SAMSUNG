.class public final Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;
.super Ljava/lang/Object;
.source "FullPlayerPlayingItemText.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayingItemText;


# instance fields
.field private final mArtist:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mContext:Landroid/content/Context;

    .line 35
    const v0, 0x7f1200b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f120129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mArtist:Landroid/widget/TextView;

    .line 38
    invoke-interface {p3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 39
    return-void
.end method

.method private updateUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 46
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getPlayingItemDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 93
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 74
    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "title":Ljava/lang/String;
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "artist":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->updateUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 82
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
    .line 88
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public onStartCalled()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->setTextScrollEnabled(Z)V

    .line 103
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->setTextScrollEnabled(Z)V

    .line 118
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 70
    return-void
.end method

.method public setTextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 61
    .local v0, "parent":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 64
    return-void
.end method

.method public setTextScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 56
    return-void
.end method
