.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;
.super Ljava/lang/Object;
.source "SeekController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnSeekBarChangeListenerImpl"
.end annotation


# instance fields
.field private mCurrentTime:J

.field private final mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final mUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0
    .param p1, "uiUpdater"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;
    .param p2, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .line 143
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 144
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const-wide/16 v4, 0x3e8

    .line 155
    if-nez p3, :cond_0

    .line 177
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->getDuration()J

    move-result-wide v0

    .line 159
    .local v0, "duration":J
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->isSeeking()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    if-gez p2, :cond_2

    .line 161
    :cond_1
    const/4 p2, 0x0

    .line 163
    :cond_2
    int-to-long v2, p2

    mul-long/2addr v2, v0

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    .line 164
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 165
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->updateCurrentTimeText(J)V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->stop()V

    .line 173
    int-to-long v2, p2

    mul-long/2addr v2, v0

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    .line 174
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->seek(J)V

    .line 175
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    iget-wide v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->updateCurrentTimeText(J)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->stop()V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->setIsSeeking(Z)V

    .line 151
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->seek(J)V

    .line 182
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->setIsSeeking(Z)V

    .line 184
    return-void
.end method
