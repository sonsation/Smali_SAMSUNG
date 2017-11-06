.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;
.super Ljava/lang/Object;
.source "PreviewableImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/single/Previewable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PROGRESS_UPDATE_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAudioId:J

.field private final mFragment:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

.field private mIsRelease:Z

.field private final mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

.field private mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mAudioId:J

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mIsRelease:Z

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    .line 42
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->setOnPreviewPlayerListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;)V

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->setOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;)V

    .line 45
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mIsRelease:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    return-object v0
.end method

.method private setPreviewCompletion(Z)V
    .locals 2
    .param p1, "completion"    # Z

    .prologue
    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;

    .line 158
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SingleItemPickerAdapter;->setPreviewCompletion(Z)V

    .line 159
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->abandonAudioFocus()V

    .line 116
    return-void
.end method

.method public getRecommendationResult()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->getRecommendationResult()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidatePlayableRelatedViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "audio_id"

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mAudioId:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 127
    const-string v2, "is_playing"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 129
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeMessages(I)V

    .line 130
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeMessages(I)V

    .line 133
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    .line 134
    invoke-virtual {v3, v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    return-void
.end method

.method public onAvailableRecommendation(Z)V
    .locals 1
    .param p1, "isAvailable"    # Z

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->setAutoRecommendationViewEnabled(Z)V

    .line 185
    return-void
.end method

.method public onCompletion()V
    .locals 2

    .prologue
    .line 168
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->setPreviewCompletion(Z)V

    .line 169
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mAudioId:J

    .line 170
    return-void
.end method

.method public onError()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    const/4 v2, 0x2

    .line 175
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->reset()V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->resetList()V

    .line 178
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mAudioId:J

    .line 179
    return-void
.end method

.method public onPlayReady()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/AbsSingleItemPickerFragment;->invalidateOptionsMenu()V

    .line 164
    return-void
.end method

.method public onPlayerStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 189
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    return-void

    .line 191
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->invalidatePlayableRelatedViews()V

    goto :goto_0

    .line 194
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->stopInvalidatePlayableRelatedViews()V

    goto :goto_0

    .line 197
    :pswitch_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mAudioId:J

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->stopInvalidatePlayableRelatedViews()V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->pause(Z)V

    .line 99
    :cond_0
    return-void
.end method

.method public play(JZ)V
    .locals 3
    .param p1, "audioId"    # J
    .param p3, "fromHighlight"    # Z

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play() : fromHighlight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " audio id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mAudioId:J

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->setPreviewCompletion(Z)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->startPlayer(JZ)V

    goto :goto_0
.end method

.method public playReady(JZ)V
    .locals 3
    .param p1, "audioId"    # J
    .param p3, "fromHighlight"    # Z

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play() : fromHighlight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " audio id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mAudioId:J

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->playReady(JZ)V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mIsRelease:Z

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->releasePlayer()V

    .line 111
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->stop()V

    .line 104
    return-void
.end method

.method public stopInvalidatePlayableRelatedViews()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "audio_id"

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mAudioId:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 145
    const-string v2, "is_playing"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v2, v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 147
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeMessages(I)V

    .line 148
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    .line 150
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mViewUpdateHandler:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl$ViewUpdateHandler;->removeMessages(I)V

    .line 154
    return-void
.end method

.method public togglePlay(JZ)V
    .locals 3
    .param p1, "audioId"    # J
    .param p3, "fromHighlight"    # Z

    .prologue
    .line 50
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "togglePlay() : audio id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->setPreviewCompletion(Z)V

    .line 58
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mAudioId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->togglePlay()V

    goto :goto_0

    .line 61
    :cond_1
    iput-wide p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mAudioId:J

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewableImpl;->mPreviewPlayer:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->startPlayer(JZ)V

    goto :goto_0
.end method
