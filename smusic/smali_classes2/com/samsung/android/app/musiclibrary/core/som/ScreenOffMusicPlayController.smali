.class final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;
.super Ljava/lang/Object;
.source "ScreenOffMusicPlayController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mNext:Landroid/view/View;

.field private mOnControllerClickListener:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

.field private final mPlay:Landroid/view/View;

.field private mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final mPrev:Landroid/view/View;

.field private mPrevNextLogged:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .param p4, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mContext:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 48
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    .line 49
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    .line 50
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_btn:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_next:I

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_previous:I

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 53
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_play:I

    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 55
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)V

    .line 89
    .local v0, "controlButtonClickListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-interface {p4, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 94
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mOnControllerClickListener:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrevNextLogged:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrevNextLogged:Z

    return p1
.end method


# virtual methods
.method public changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 179
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 181
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 175
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 160
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 166
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
    .line 171
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onScreenOffAnimationEnd(Z)V
    .locals 0
    .param p1, "isTimeOut"    # Z

    .prologue
    .line 156
    return-void
.end method

.method public onScreenOffAnimationStart()V
    .locals 13

    .prologue
    const/16 v12, 0x12c

    const/16 v11, 0xc8

    const/4 v10, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 130
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 135
    invoke-static {v6, v9, v8, v12, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 136
    .local v5, "prevScaleAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 137
    invoke-static {v6, v9, v8, v11, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 139
    .local v4, "prevAlphaAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 140
    invoke-static {v6, v9, v8, v12, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 141
    .local v1, "nextScaleAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 142
    invoke-static {v6, v9, v8, v11, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 144
    .local v0, "nextAlphaAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 145
    invoke-static {v6, v9, v8, v12, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 146
    .local v3, "playScaleAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 147
    invoke-static {v6, v9, v8, v11, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 149
    .local v2, "playAlphaAnimator":Landroid/animation/Animator;
    const/4 v6, 0x6

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v5, v6, v10

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v7, 0x4

    aput-object v3, v6, v7

    const/4 v7, 0x5

    aput-object v2, v6, v7

    .line 150
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->startAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 152
    return-void
.end method

.method public onScreenOnAnimationEnd()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onScreenOnAnimationStart()V
    .locals 12

    .prologue
    const/16 v11, 0x12c

    const/16 v10, 0xc8

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 103
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 104
    invoke-static {v6, v8, v9, v11, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 105
    .local v5, "prevScaleAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPrev:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 106
    invoke-static {v6, v8, v9, v10, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 108
    .local v4, "prevAlphaAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 109
    invoke-static {v6, v8, v9, v11, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 110
    .local v1, "nextScaleAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mNext:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 111
    invoke-static {v6, v8, v9, v10, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 113
    .local v0, "nextAlphaAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_60:Landroid/view/animation/Interpolator;

    .line 114
    invoke-static {v6, v8, v9, v11, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getScaleAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 115
    .local v3, "playScaleAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlay:Landroid/view/View;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 116
    invoke-static {v6, v8, v9, v10, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->getAlphaAnimator(Landroid/view/View;FFILandroid/animation/TimeInterpolator;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 118
    .local v2, "playAlphaAnimator":Landroid/animation/Animator;
    const/4 v6, 0x6

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v7, 0x2

    aput-object v1, v6, v7

    const/4 v7, 0x3

    aput-object v0, v6, v7

    const/4 v7, 0x4

    aput-object v3, v6, v7

    const/4 v7, 0x5

    aput-object v2, v6, v7

    .line 119
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/util/AnimatorUtils;->startAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    .line 121
    return-void
.end method

.method public setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0
    .param p1, "controller"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 185
    return-void
.end method

.method setControllerClickListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->mOnControllerClickListener:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$OnControllerClickListener;

    .line 99
    return-void
.end method
