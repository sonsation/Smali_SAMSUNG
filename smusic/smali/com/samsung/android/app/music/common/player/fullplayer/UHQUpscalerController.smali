.class public Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;
.super Ljava/lang/Object;
.source "UHQUpscalerController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsWfdConnected:Z

.field private final mOnUhqUpScalleSettingListener:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;

.field private mPlayerType:I

.field private final mPlayerView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

.field private final mSettingObserver:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

.field private mUhqUpscalerView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "playerView"    # Landroid/view/View;
    .param p3, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController$1;-><init>(Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mOnUhqUpScalleSettingListener:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mPlayerType:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mIsWfdConnected:Z

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mContext:Landroid/content/Context;

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mPlayerView:Ljava/lang/ref/WeakReference;

    .line 61
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mSettingObserver:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    .line 64
    invoke-interface {p3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 65
    return-void
.end method

.method private convertUhqString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "upscalerCharSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UHQ"

    const-string v2, "U H Q"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private isUhqUpscalerAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 164
    iget v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mPlayerType:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mSettingObserver:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->isUhqUpscalerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathUhqUpscalerActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 132
    return-void
.end method

.method public onDestroyCalled()V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 127
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 99
    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 6
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 103
    const/4 v1, 0x0

    .line 104
    .local v1, "needToUpdate":Z
    iget v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mPlayerType:I

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mPlayerType:I

    .line 106
    const/4 v1, 0x1

    .line 108
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 109
    .local v0, "isWfdConnected":Z
    :goto_0
    iget-boolean v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mIsWfdConnected:Z

    if-eq v4, v0, :cond_1

    .line 110
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mIsWfdConnected:Z

    .line 111
    const/4 v1, 0x1

    .line 113
    :cond_1
    if-eqz v1, :cond_2

    .line 114
    iget v4, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mPlayerType:I

    if-ne v4, v2, :cond_4

    if-nez v0, :cond_4

    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->updateUhqUpscalerView(Z)V

    .line 116
    :cond_2
    return-void

    .end local v0    # "isWfdConnected":Z
    :cond_3
    move v0, v3

    .line 108
    goto :goto_0

    .restart local v0    # "isWfdConnected":Z
    :cond_4
    move v2, v3

    .line 114
    goto :goto_1
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
    .line 122
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onStartCalled()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mSettingObserver:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mSettingObserver:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mOnUhqUpScalleSettingListener:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->setOnContentChangeListener(Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onStopCalled()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mSettingObserver:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mSettingObserver:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;->setOnContentChangeListener(Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting$OnSettingValueChangeListener;)V

    .line 156
    :cond_0
    return-void
.end method

.method public setFocusable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mUhqUpscalerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mUhqUpscalerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 94
    :cond_0
    return-void
.end method

.method public updateUhqUpscalerView(Z)V
    .locals 4
    .param p1, "canShow"    # Z

    .prologue
    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mSettingObserver:Lcom/samsung/android/app/music/common/player/fullplayer/UhqUpscalerSetting;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isAndroidForWorkMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->isUhqUpscalerAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mPlayerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 73
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 76
    const v2, 0x7f1201d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, "uhqTagStub":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 78
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "uhqTagStub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mUhqUpscalerView:Landroid/view/View;

    .line 80
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mUhqUpscalerView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mUhqUpscalerView:Landroid/view/View;

    .line 81
    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->convertUhqString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mUhqUpscalerView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 85
    .end local v1    # "view":Landroid/view/View;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mUhqUpscalerView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/UHQUpscalerController;->mUhqUpscalerView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
