.class Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;
.super Ljava/lang/Object;
.source "SeekController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnSeekBarChangeListenerImpl"
.end annotation


# instance fields
.field private mCurrentTime:J

.field private final mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final mScrubbingBar:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

.field private final mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0
    .param p1, "uiUpdater"    # Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;
    .param p2, "scrubbingBar"    # Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;
    .param p3, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 348
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mScrubbingBar:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    .line 349
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 350
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

    .line 361
    if-nez p3, :cond_0

    .line 390
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->getDuration()J

    move-result-wide v0

    .line 365
    .local v0, "duration":J
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->isCustomDrawingProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 366
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mScrubbingBar:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mScrubbingBar:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->reprocessProgress(I)I

    move-result p2

    .line 368
    const/16 v2, 0x3e8

    if-le p2, v2, :cond_1

    .line 369
    const/16 p2, 0x3e8

    .line 373
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    if-gez p2, :cond_3

    .line 374
    :cond_2
    const/4 p2, 0x0

    .line 376
    :cond_3
    int-to-long v2, p2

    mul-long/2addr v2, v0

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    .line 377
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 378
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateCurrentTimeText(J)V

    goto :goto_0

    .line 385
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->stop()V

    .line 386
    int-to-long v2, p2

    mul-long/2addr v2, v0

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    .line 387
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    invoke-interface {v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->seek(J)V

    .line 388
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateCurrentTimeText(J)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->stop()V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->setIsCustomDrawingProgress(Z)V

    .line 357
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->seek(J)V

    .line 395
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mCurrentTime:J

    .line 396
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->setIsCustomDrawingProgress(Z)V

    .line 397
    return-void
.end method
