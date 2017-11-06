.class public abstract Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
.super Landroid/widget/RelativeLayout;
.source "VideoControls.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
    }
.end annotation


# static fields
.field protected static final CONTROL_VISIBILITY_ANIMATION_LENGTH:J = 0x12cL

.field public static final DEFAULT_CONTROL_HIDE_DELAY:I = 0x7d0

.field protected static final INVALID_RESOURCE_ID:I


# instance fields
.field protected buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected canViewHide:Z

.field protected controlsContainer:Landroid/view/ViewGroup;

.field protected currentTime:Landroid/widget/TextView;

.field protected defaultNextDrawable:Landroid/graphics/drawable/Drawable;

.field protected defaultPauseDrawable:Landroid/graphics/drawable/Drawable;

.field protected defaultPlayDrawable:Landroid/graphics/drawable/Drawable;

.field protected defaultPreviousDrawable:Landroid/graphics/drawable/Drawable;

.field protected descriptionView:Landroid/widget/TextView;

.field protected endTime:Landroid/widget/TextView;

.field protected hideDelay:J

.field protected hideEmptyTextContainer:Z

.field protected internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected isLoading:Z

.field protected isVisible:Z

.field protected loadingProgress:Landroid/widget/ProgressBar;

.field protected nextButton:Landroid/widget/ImageButton;

.field protected pauseResourceId:I

.field protected playPauseButton:Landroid/widget/ImageButton;

.field protected playResourceId:I

.field protected previousButton:Landroid/widget/ImageButton;

.field protected progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected subTitleView:Landroid/widget/TextView;

.field protected textContainer:Landroid/view/ViewGroup;

.field protected titleView:Landroid/widget/TextView;

.field protected videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected visibilityHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected visibilityListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 93
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    .line 97
    iput v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playResourceId:I

    .line 98
    iput v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->pauseResourceId:I

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    .line 102
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    .line 103
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    .line 104
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    .line 105
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideEmptyTextContainer:Z

    .line 166
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 170
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 93
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    .line 97
    iput v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playResourceId:I

    .line 98
    iput v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->pauseResourceId:I

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    .line 102
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    .line 103
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    .line 104
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    .line 105
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideEmptyTextContainer:Z

    .line 171
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 93
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    .line 97
    iput v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playResourceId:I

    .line 98
    iput v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->pauseResourceId:I

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    .line 102
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    .line 103
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    .line 104
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    .line 105
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideEmptyTextContainer:Z

    .line 176
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    .line 93
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    .line 97
    iput v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playResourceId:I

    .line 98
    iput v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->pauseResourceId:I

    .line 100
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    .line 102
    iput-boolean v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    .line 103
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    .line 104
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    .line 105
    iput-boolean v3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideEmptyTextContainer:Z

    .line 182
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V

    .line 183
    return-void
.end method


# virtual methods
.method public addExtraView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 451
    return-void
.end method

.method protected abstract animateVisibility(Z)V
.end method

.method public abstract finishLoading()V
.end method

.method public getExtraViews()Ljava/util/List;
    .locals 1
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
    .line 459
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method protected abstract getLayoutResource()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public hideDelayed(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 480
    iput-wide p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelay:J

    .line 482
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isLoading:Z

    if-eqz v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$1;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$1;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected isTextContainerEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 635
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->titleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 647
    :cond_0
    :goto_0
    return v0

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->subTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->subTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 643
    :cond_2
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    .line 647
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onNextClick()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;->onNextClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onNextClicked()Z

    .line 605
    :cond_1
    return-void
.end method

.method protected onPlayPauseClick()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;->onPlayPauseClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onPlayPauseClicked()Z

    .line 585
    :cond_1
    return-void
.end method

.method protected onPreviousClick()V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;->onPreviousClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->onPreviousClicked()Z

    .line 595
    :cond_1
    return-void
.end method

.method protected onVisibilityChanged()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;

    if-nez v0, :cond_0

    .line 664
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->isVisible:Z

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;->onControlsShown()V

    goto :goto_0

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;->onControlsHidden()V

    goto :goto_0
.end method

.method protected registerListeners()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$2;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$2;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 546
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$3;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$3;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 552
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$4;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$4;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    return-void
.end method

.method public removeExtraView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 455
    return-void
.end method

.method protected retrieveViews()V
    .locals 1

    .prologue
    .line 518
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_current_time:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->currentTime:Landroid/widget/TextView;

    .line 519
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_end_time:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->endTime:Landroid/widget/TextView;

    .line 521
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_title:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->titleView:Landroid/widget/TextView;

    .line 522
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_sub_title:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->subTitleView:Landroid/widget/TextView;

    .line 523
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_description:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->descriptionView:Landroid/widget/TextView;

    .line 525
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_play_pause_btn:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    .line 526
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_previous_btn:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    .line 527
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_next_btn:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    .line 529
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_video_loading:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->loadingProgress:Landroid/widget/ProgressBar;

    .line 531
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_interactive_container:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->controlsContainer:Landroid/view/ViewGroup;

    .line 532
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_text_container:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->textContainer:Landroid/view/ViewGroup;

    .line 533
    return-void
.end method

.method public setButtonListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;)V
    .locals 0
    .param p1, "callback"    # Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 210
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->buttonsListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    .line 211
    return-void
.end method

.method public setCanHide(Z)V
    .locals 0
    .param p1, "canHide"    # Z

    .prologue
    .line 500
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->canViewHide:Z

    .line 501
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 269
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateTextContainerVisibility()V

    .line 271
    return-void
.end method

.method public abstract setDuration(J)V
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method

.method public setFastForwardButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 407
    return-void
.end method

.method public setFastForwardButtonRemoved(Z)V
    .locals 0
    .param p1, "removed"    # Z

    .prologue
    .line 447
    return-void
.end method

.method public setFastForwardImageResource(I)V
    .locals 0
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 330
    return-void
.end method

.method public setHideEmptyTextContainer(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 510
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideEmptyTextContainer:Z

    .line 511
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateTextContainerVisibility()V

    .line 512
    return-void
.end method

.method public setNextButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 378
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 379
    return-void
.end method

.method public setNextButtonRemoved(Z)V
    .locals 2
    .param p1, "removed"    # Z

    .prologue
    .line 426
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 427
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNextImageResource(I)V
    .locals 2
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 305
    if-eqz p1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 310
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultNextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setPlayPauseImages(II)V
    .locals 1
    .param p1, "playResourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "pauseResourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 280
    iput p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playResourceId:I

    .line 281
    iput p2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->pauseResourceId:I

    .line 283
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlayPauseImage(Z)V

    .line 284
    return-void

    .line 283
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract setPosition(J)V
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
.end method

.method public setPreviousButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 364
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 365
    return-void
.end method

.method public setPreviousButtonRemoved(Z)V
    .locals 2
    .param p1, "removed"    # Z

    .prologue
    .line 416
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 417
    return-void

    .line 416
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPreviousImageResource(I)V
    .locals 2
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultPreviousDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setRewindButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 393
    return-void
.end method

.method public setRewindButtonRemoved(Z)V
    .locals 0
    .param p1, "removed"    # Z

    .prologue
    .line 437
    return-void
.end method

.method public setRewindImageResource(I)V
    .locals 0
    .param p1, "resourceId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 320
    return-void
.end method

.method public setSeekListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 201
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    .line 202
    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subTitle"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 257
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->subTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateTextContainerVisibility()V

    .line 259
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 246
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateTextContainerVisibility()V

    .line 248
    return-void
.end method

.method public setVideoView(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;)V
    .locals 0
    .param p1, "EMVideoView"    # Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 192
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    .line 193
    return-void
.end method

.method public setVisibilityListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 219
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsVisibilityListener;

    .line 220
    return-void
.end method

.method protected setup(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getLayoutResource()I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 615
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->retrieveViews()V

    .line 617
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->registerListeners()V

    .line 618
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateButtonDrawables()V

    .line 621
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$5;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$5;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/Repeater;->setRepeatListener(Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;)V

    .line 627
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->visibilityHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 468
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->clearAnimation()V

    .line 470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->animateVisibility(Z)V

    .line 471
    return-void
.end method

.method public abstract showLoading(Z)V
.end method

.method protected updateButtonDrawables()V
    .locals 3

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_play_arrow_white:I

    sget v2, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_button_selector:I

    invoke-static {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/EMResourceUtil;->tintList(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 566
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_pause_white:I

    sget v2, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_button_selector:I

    invoke-static {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/EMResourceUtil;->tintList(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 567
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 569
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_skip_previous_white:I

    sget v2, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_button_selector:I

    invoke-static {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/EMResourceUtil;->tintList(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultPreviousDrawable:Landroid/graphics/drawable/Drawable;

    .line 570
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->previousButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultPreviousDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 572
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_skip_next_white:I

    sget v2, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_button_selector:I

    invoke-static {v0, v1, v2}, Lcom/devbrackets/android/exomedia/util/EMResourceUtil;->tintList(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultNextDrawable:Landroid/graphics/drawable/Drawable;

    .line 573
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->nextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultNextDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    return-void
.end method

.method public updatePlayPauseImage(Z)V
    .locals 2
    .param p1, "isPlaying"    # Z

    .prologue
    .line 338
    if-eqz p1, :cond_1

    .line 339
    iget v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->pauseResourceId:I

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->pauseResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 351
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultPauseDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 345
    :cond_1
    iget v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playResourceId:I

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playResourceId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->playPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->defaultPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updatePlaybackState(Z)V
    .locals 2
    .param p1, "isPlaying"    # Z

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlayPauseImage(Z)V

    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;->start()V

    .line 233
    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->hideDelayed(J)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/util/Repeater;->stop()V

    .line 236
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->show()V

    goto :goto_0
.end method

.method protected updateProgress()V
    .locals 7

    .prologue
    .line 671
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getCurrentPosition()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getDuration()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getBufferPercentage()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updateProgress(JJI)V

    .line 674
    :cond_0
    return-void
.end method

.method public abstract updateProgress(JJI)V
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param
.end method

.method protected abstract updateTextContainerVisibility()V
.end method
