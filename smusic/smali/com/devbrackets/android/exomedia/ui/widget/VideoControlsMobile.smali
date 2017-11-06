.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;
.super Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
.source "VideoControlsMobile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;
    }
.end annotation


# instance fields
.field protected extraViewsContainer:Landroid/widget/LinearLayout;

.field protected seekBar:Landroid/widget/SeekBar;

.field protected userInteracting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->userInteracting:Z

    .line 50
    return-void
.end method


# virtual methods
.method public addExtraView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->extraViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method protected animateVisibility(Z)V
    .locals 6
    .param p1, "toVisible"    # Z

    .prologue
    const-wide/16 v4, 0x12c

    .line 154
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isVisible:Z

    if-ne v0, p1, :cond_0

    .line 168
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->hideEmptyTextContainer:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isTextContainerEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->textContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->textContainer:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1, v4, v5}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    :cond_2
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isLoading:Z

    if-nez v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->controlsContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->controlsContainer:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1, v4, v5}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    :cond_3
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isVisible:Z

    .line 167
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->onVisibilityChanged()V

    goto :goto_0
.end method

.method public finishLoading()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 201
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isLoading:Z

    if-nez v1, :cond_0

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isLoading:Z

    .line 206
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->controlsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 207
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->loadingProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 209
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->updatePlaybackState(Z)V

    goto :goto_0
.end method

.method public getExtraViews()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->extraViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 120
    .local v0, "childCount":I
    if-gtz v0, :cond_1

    .line 121
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getExtraViews()Ljava/util/List;

    move-result-object v1

    .line 130
    :cond_0
    return-object v1

    .line 125
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 126
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 127
    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->extraViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_controls_mobile:I

    return v0
.end method

.method public hideDelayed(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 135
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->hideDelay:J

    .line 137
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->canViewHide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isLoading:Z

    if-eqz v0, :cond_1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->userInteracting:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->visibilityHandler:Landroid/os/Handler;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$1;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$1;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected registerListeners()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->registerListeners()V

    .line 103
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile$SeekBarChanged;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 104
    return-void
.end method

.method public removeExtraView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->extraViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method protected retrieveViews()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->retrieveViews()V

    .line 96
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_video_seek:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekBar:Landroid/widget/SeekBar;

    .line 97
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_extra_container:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->extraViewsContainer:Landroid/widget/LinearLayout;

    .line 98
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->endTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public setPosition(J)V
    .locals 3
    .param p1, "position"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 72
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->currentTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    return-void
.end method

.method public showLoading(Z)V
    .locals 2
    .param p1, "initialLoad"    # Z

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isLoading:Z

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isLoading:Z

    .line 193
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->controlsContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->loadingProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 196
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->show()V

    goto :goto_0
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
    .line 86
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->userInteracting:Z

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p5

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 88
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->seekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->currentTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :cond_0
    return-void
.end method

.method protected updateTextContainerVisibility()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    .line 172
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isVisible:Z

    if-nez v1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->isTextContainerEmpty()Z

    move-result v0

    .line 177
    .local v0, "emptyText":Z
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->hideEmptyTextContainer:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 178
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 179
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->textContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->textContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 180
    :cond_2
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->hideEmptyTextContainer:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 182
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->textContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    iget-object v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsMobile;->textContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
