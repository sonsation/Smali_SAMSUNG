.class Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;
.super Ljava/lang/Object;
.source "PlayerChangeBufferingUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater$ChangeToMediaPlayer;
    }
.end annotation


# static fields
.field private static final SAVED_INSTANCE_STATE_IS_PROGRESS:Ljava/lang/String; = "saved_instance_state_is_progress"

.field private static final SUB_TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBufferingDialog:Landroid/app/ProgressDialog;

.field private final mChangeToMediaPlayer:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater$ChangeToMediaPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater$ChangeToMediaPlayer;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mChangeToMediaPlayer:Landroid/content/DialogInterface$OnCancelListener;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mActivity:Landroid/app/Activity;

    .line 37
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->SUB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private hideProgressDialog()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hideProgressDialog()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    .line 139
    :cond_0
    return-void
.end method

.method private showDeviceBuffering()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mChangeToMediaPlayer:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->showProgressDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 111
    :cond_1
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->hideProgressDialog()V

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string v0, "Ui"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " showProgressDialog() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    if-eqz p2, :cond_0

    .line 42
    const-string/jumbo v0, "saved_instance_state_is_progress"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->showDeviceBuffering()V

    .line 46
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->hideProgressDialog()V

    .line 77
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 61
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 56
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    const-string/jumbo v1, "saved_instance_state_is_progress"

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->mBufferingDialog:Landroid/app/ProgressDialog;

    .line 71
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 70
    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 105
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 82
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->showDeviceBuffering()V

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/PlayerChangeBufferingUpdater;->hideProgressDialog()V

    goto :goto_0
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
    .line 100
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method
