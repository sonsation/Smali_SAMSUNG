.class final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;
.super Ljava/lang/Object;
.source "ScreenOffMusicPlayingItemText.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/IPlayingItemText;


# instance fields
.field private final mAppName:Landroid/widget/TextView;

.field private final mArtist:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "appNameResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mContext:Landroid/content/Context;

    .line 46
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    .line 47
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->artist:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mArtist:Landroid/widget/TextView;

    .line 48
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->app_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 51
    invoke-interface {p4, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 52
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 53
    return-void
.end method

.method private updateUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x11

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 62
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->getPlayingItemDescription(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 193
    return-void
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 187
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 166
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->no_queued_tracks:I

    .line 167
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "title":Ljava/lang/String;
    :goto_0
    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "artist":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->updateUi(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 167
    .end local v0    # "artist":Ljava/lang/String;
    .end local v1    # "title":Ljava/lang/String;
    :cond_0
    const-string v2, "android.media.metadata.TITLE"

    .line 168
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 176
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
    .line 182
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onScreenOffAnimationEnd(Z)V
    .locals 0
    .param p1, "isTimeOut"    # Z

    .prologue
    .line 162
    return-void
.end method

.method public onScreenOffAnimationStart()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x3f666666    # 0.9f

    const/4 v7, 0x0

    const/16 v6, 0x12c

    const/high16 v5, 0x3f800000    # 1.0f

    .line 142
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 143
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 144
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 145
    invoke-static {v1, v5, v8, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 146
    .local v2, "scaleAnimator":Landroid/animation/Animator;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 147
    invoke-static {v1, v5, v7, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 149
    .local v0, "alphaAnimator":Landroid/animation/Animator;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v9

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->startAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 152
    .end local v0    # "alphaAnimator":Landroid/animation/Animator;
    .end local v2    # "scaleAnimator":Landroid/animation/Animator;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 153
    invoke-static {v3, v5, v8, v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 154
    .restart local v2    # "scaleAnimator":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 155
    invoke-static {v3, v5, v7, v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 157
    .restart local v0    # "alphaAnimator":Landroid/animation/Animator;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v9

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->startAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 158
    return-void
.end method

.method public onScreenOnAnimationEnd()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onScreenOnAnimationStart()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const v8, 0x3f666666    # 0.9f

    const/4 v7, 0x0

    const/16 v6, 0x12c

    const/high16 v5, 0x3f800000    # 1.0f

    .line 117
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 118
    .local v1, "parent":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 119
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 120
    invoke-static {v1, v8, v5, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 121
    .local v2, "scaleAnimator":Landroid/animation/Animator;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 122
    invoke-static {v1, v7, v5, v6, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 124
    .local v0, "alphaAnimator":Landroid/animation/Animator;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v9

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->startAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 127
    .end local v0    # "alphaAnimator":Landroid/animation/Animator;
    .end local v2    # "scaleAnimator":Landroid/animation/Animator;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 128
    invoke-static {v3, v8, v5, v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 129
    .restart local v2    # "scaleAnimator":Landroid/animation/Animator;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mAppName:Landroid/widget/TextView;

    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 130
    invoke-static {v3, v7, v5, v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 132
    .restart local v0    # "alphaAnimator":Landroid/animation/Animator;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v2, v3, v9

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->startAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 133
    return-void
.end method

.method public onStartCalled()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->setTextScrollEnabled(Z)V

    .line 93
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->setTextScrollEnabled(Z)V

    .line 108
    return-void
.end method

.method public setImportantForAccessibility(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 83
    return-void
.end method

.method public setTextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 77
    return-void
.end method

.method public setTextScrollEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayingItemText;->mArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 72
    return-void
.end method
