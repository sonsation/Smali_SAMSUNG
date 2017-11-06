.class final Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;
.super Ljava/lang/Object;
.source "MiniPlayerPlayingItemText.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayingItemText;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArtistFadeAnimationText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

.field private final mArtistTextView:Landroid/widget/TextView;

.field private mAudioId:J

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mTitleFadeAnimationText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

.field private final mTitleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mAudioId:J

    .line 50
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mActivity:Landroid/app/Activity;

    .line 52
    const v0, 0x7f1200b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleFadeAnimationText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    .line 54
    const v0, 0x7f120129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistTextView:Landroid/widget/TextView;

    .line 55
    new-instance v0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistFadeAnimationText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    .line 57
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 58
    invoke-interface {p3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 59
    return-void
.end method

.method private setRadioIcon(Z)V
    .locals 6
    .param p1, "isRadio"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 118
    .local v1, "res":Landroid/content/res/Resources;
    const v3, 0x7f0201d9

    .line 119
    invoke-static {v1, v3, v4}, Landroid/support/v4/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    .local v0, "radioIcon":Landroid/graphics/drawable/Drawable;
    const v3, 0x7f0d06d5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 121
    .local v2, "size":I
    invoke-virtual {v0, v5, v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    const v4, 0x7f0d06d4

    .line 124
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 123
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 129
    .end local v0    # "radioIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "size":I
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto :goto_0
.end method

.method private updateEmptyUi()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleFadeAnimationText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->cancel()V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistFadeAnimationText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a0137

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->setRadioIcon(Z)V

    .line 93
    return-void
.end method

.method private updateUi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;
    .param p4, "withAnimation"    # Z

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 99
    :pswitch_0
    if-eqz p4, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleFadeAnimationText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->setText(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistFadeAnimationText:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText$FadeOutInText;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistTextView:Landroid/widget/TextView;

    const-string v1, "%s / %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 227
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 229
    return-void
.end method

.method getArtistView()Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method getTitleView()Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 166
    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 223
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 8
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    long-to-int v2, v4

    .line 200
    .local v2, "audioId":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->updateEmptyUi()V

    .line 209
    :goto_0
    int-to-long v4, v2

    iput-wide v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mAudioId:J

    .line 210
    return-void

    .line 203
    :cond_0
    const-string v4, "android.media.metadata.TITLE"

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    .local v3, "title":Ljava/lang/String;
    const-string v4, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "artist":Ljava/lang/String;
    const-string v4, "android.media.metadata.ALBUM"

    invoke-virtual {p1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "album":Ljava/lang/String;
    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mAudioId:J

    int-to-long v6, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v3, v1, v0, v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->updateUi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->setRadioIcon(Z)V

    goto :goto_0

    .line 206
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 214
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
    .line 219
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public onStartCalled()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->setTextScrollEnabled(Z)V

    .line 171
    return-void
.end method

.method public onStopCalled()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->setTextScrollEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 85
    return-void
.end method

.method public setTextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public setTextScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayerPlayingItemText;->mArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 73
    return-void
.end method
