.class public Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;
.source "StreamingServerMessageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "streaming_server_dialog"


# instance fields
.field private final mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field private mCpAttr:I

.field private mIsSupposedToPlaying:Z

.field private final mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mPendingMessage:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverAdapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 45
    return-void
.end method

.method private changeObservable(I)V
    .locals 1
    .param p1, "queueType"    # I

    .prologue
    .line 138
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    goto :goto_0
.end method

.method private checkToShowMessage(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "message"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    if-nez p1, :cond_1

    move v1, v2

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 129
    :cond_1
    const-string v3, "explicit_popup"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v3

    const-string v4, "explicit_option"

    .line 131
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 132
    .local v0, "isExplicitOn":Z
    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private static dismissDialog(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "streaming_server_dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 109
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getShowsDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 112
    :cond_0
    return-void
.end method

.method private isPendingMessage(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 115
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v0

    .line 119
    :cond_1
    const-string/jumbo v1, "upsell_popup"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "explicit_popup"

    .line 120
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mIsSupposedToPlaying:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static showMessage(Landroid/app/Activity;Landroid/os/Bundle;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "cpAttrs"    # I

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->dismissDialog(Landroid/app/Activity;)V

    .line 89
    invoke-static {p2, p0, p1}, Lcom/samsung/android/app/music/service/metadata/uri/PlayerMessageFactory;->obtainMessage(ILandroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v0

    .line 90
    .local v0, "message":Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->gravity()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 102
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 92
    :sswitch_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/dialog/player/PlayerMessageDialogFragment;->newInstance(Landroid/os/Bundle;I)Landroid/app/DialogFragment;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "streaming_server_dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :sswitch_1
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/dialog/player/PlayerBottomDialogFragment;->newInstance(Landroid/os/Bundle;I)Landroid/app/DialogFragment;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "streaming_server_dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const-string v2, "com.samsung.android.app.music.core.state.PLAYER_EXTRA"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 66
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mCpAttr:I

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isOnline(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    const-string/jumbo v2, "player_extra_message"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, "message":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->isPendingMessage(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    const-string/jumbo v2, "streaming_server_dialog"

    const-string/jumbo v3, "onExtrasChanged >> Add to pending"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mPendingMessage:Landroid/os/Bundle;

    .line 81
    .end local v0    # "message":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 72
    .restart local v0    # "message":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->checkToShowMessage(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget v3, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mCpAttr:I

    invoke-static {v2, v0, v3}, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->showMessage(Landroid/app/Activity;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 76
    .end local v0    # "message":Landroid/os/Bundle;
    :cond_2
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 78
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "queueType":I
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->changeObservable(I)V

    goto :goto_0
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 49
    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mCpAttr:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mPendingMessage:Landroid/os/Bundle;

    .line 51
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mIsSupposedToPlaying:Z

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mPendingMessage:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mIsSupposedToPlaying:Z

    if-eqz v0, :cond_0

    .line 57
    const-string/jumbo v0, "streaming_server_dialog"

    const-string/jumbo v1, "onPlaybackStateChanged >> Show pending message."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mPendingMessage:Landroid/os/Bundle;

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mCpAttr:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->showMessage(Landroid/app/Activity;Landroid/os/Bundle;I)V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/StreamingServerMessageReceiver;->mPendingMessage:Landroid/os/Bundle;

    .line 61
    :cond_0
    return-void
.end method
