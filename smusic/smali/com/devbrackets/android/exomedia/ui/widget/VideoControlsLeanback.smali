.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.super Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
.source "VideoControlsLeanback.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;
    }
.end annotation


# instance fields
.field protected buttonFocusChangeListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

.field protected controlsParent:Landroid/view/ViewGroup;

.field protected currentFocus:Landroid/view/View;

.field protected defaultFastForwardDrawable:Landroid/graphics/drawable/Drawable;

.field protected defaultRewindDrawable:Landroid/graphics/drawable/Drawable;

.field protected fastForwardButton:Landroid/widget/ImageButton;

.field protected progressBar:Landroid/widget/ProgressBar;

.field protected rewindButton:Landroid/widget/ImageButton;

.field protected rippleIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonFocusChangeListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    .line 64
    return-void
.end method


# virtual methods
.method protected animateVisibility(Z)V
    .locals 6
    .param p1, "toVisible"    # Z

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isVisible:Z

    if-ne v0, p1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isLoading:Z

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->controlsParent:Landroid/view/ViewGroup;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->controlsParent:Landroid/view/ViewGroup;

    const-wide/16 v4, 0x12c

    invoke-direct {v1, v2, p1, v4, v5}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    :cond_1
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isVisible:Z

    .line 230
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onVisibilityChanged()V

    goto :goto_0
.end method

.method public finishLoading()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 265
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isLoading:Z

    if-nez v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 269
    :cond_0
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isLoading:Z

    .line 270
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->controlsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rippleIndicator:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 272
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->loadingProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->updatePlaybackState(Z)V

    goto :goto_0
.end method

.method protected focusNext(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusRightId()I

    move-result v0

    .line 345
    .local v0, "nextId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 358
    :goto_0
    return-void

    .line 349
    :cond_0
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 350
    .local v1, "nextView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 351
    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->focusNext(Landroid/view/View;)V

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 356
    iput-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentFocus:Landroid/view/View;

    .line 357
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonFocusChangeListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected focusPrevious(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusLeftId()I

    move-result v0

    .line 367
    .local v0, "previousId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 380
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 372
    .local v1, "previousView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    invoke-virtual {p0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->focusPrevious(Landroid/view/View;)V

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 378
    iput-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentFocus:Landroid/view/View;

    .line 379
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonFocusChangeListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_controls_leanback:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->onAttachedToWindow()V

    .line 89
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->playPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 90
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->playPauseButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentFocus:Landroid/view/View;

    .line 91
    return-void
.end method

.method protected onFastForwardClick()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;->onFastForwardClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onFastForwardClicked()Z

    .line 295
    :cond_1
    return-void
.end method

.method protected onRewindClick()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;->onRewindClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onRewindClicked()Z

    .line 285
    :cond_1
    return-void
.end method

.method protected performSeek(I)V
    .locals 1
    .param p1, "seekToTime"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    invoke-interface {v0, p1}, Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;->onSeekEnded(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onSeekEnded(I)Z

    .line 307
    :cond_1
    return-void
.end method

.method protected registerForInput()V
    .locals 2

    .prologue
    .line 327
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V

    .line 328
    .local v0, "remoteKeyListener":Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 331
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->playPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 332
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 333
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 334
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 335
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 336
    return-void
.end method

.method protected registerListeners()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->registerListeners()V

    .line 187
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$1;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$1;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$2;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$2;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->previousButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonFocusChangeListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 202
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonFocusChangeListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 203
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->playPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonFocusChangeListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonFocusChangeListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 205
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->nextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->buttonFocusChangeListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 206
    return-void
.end method

.method protected retrieveViews()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->retrieveViews()V

    .line 176
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_video_progress:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    .line 178
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_rewind_btn:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    .line 179
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_fast_forward_btn:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    .line 180
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_leanback_ripple:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rippleIndicator:Landroid/widget/ImageView;

    .line 181
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_parent:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->controlsParent:Landroid/view/ViewGroup;

    .line 182
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 106
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->endTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 110
    :cond_0
    return-void
.end method

.method public setFastForwardButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 154
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 157
    :cond_0
    return-void
.end method

.method public setFastForwardButtonRemoved(Z)V
    .locals 2
    .param p1, "removed"    # Z

    .prologue
    .line 168
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 171
    :cond_0
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFastForwardImageResource(I)V
    .locals 2
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 134
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->defaultFastForwardDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPosition(J)V
    .locals 3
    .param p1, "position"    # J

    .prologue
    .line 100
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    return-void
.end method

.method public setRewindButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 147
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 150
    :cond_0
    return-void
.end method

.method public setRewindButtonRemoved(Z)V
    .locals 2
    .param p1, "removed"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 162
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 164
    :cond_0
    return-void

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRewindImageResource(I)V
    .locals 2
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 121
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    if-eqz p1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->defaultRewindDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setup(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    .line 82
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->registerForInput()V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->setFocusable(Z)V

    .line 84
    return-void
.end method

.method public showLoading(Z)V
    .locals 2
    .param p1, "initialLoad"    # Z

    .prologue
    const/16 v1, 0x8

    .line 251
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isLoading:Z

    if-eqz v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isLoading:Z

    .line 256
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->controlsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rippleIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->loadingProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 260
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->show()V

    goto :goto_0
.end method

.method protected showTemporary()V
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->show()V

    .line 317
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->hideDelayed(J)V

    .line 320
    :cond_0
    return-void
.end method

.method protected updateButtonDrawables()V
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateButtonDrawables()V

    .line 212
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_rewind_white:I

    sget v2, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_button_selector:I

    invoke-static {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/EMResourceUtil;->tintList(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->defaultRewindDrawable:Landroid/graphics/drawable/Drawable;

    .line 213
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->rewindButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->defaultRewindDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_fast_forward_white:I

    sget v2, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_button_selector:I

    invoke-static {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/EMResourceUtil;->tintList(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->defaultFastForwardDrawable:Landroid/graphics/drawable/Drawable;

    .line 216
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->fastForwardButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->defaultFastForwardDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    return-void
.end method

.method public updateProgress(JJI)V
    .locals 5
    .param p1, "position"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3, "duration"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5, "bufferPercent"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .prologue
    .line 114
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p5

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 115
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 116
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method protected updateTextContainerVisibility()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    .line 235
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isVisible:Z

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isTextContainerEmpty()Z

    move-result v0

    .line 240
    .local v0, "emptyText":Z
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->hideEmptyTextContainer:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 242
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->textContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->textContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 243
    :cond_2
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->hideEmptyTextContainer:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 245
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->textContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->textContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
