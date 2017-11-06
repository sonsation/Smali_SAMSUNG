.class public Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;
.super Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
.source "MilkVideoControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mDuration:J

.field private mExtraViewsContainer:Landroid/widget/LinearLayout;

.field private mRotateButton:Landroid/widget/ImageButton;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mUpdateProgressListener:Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;

.field private mUserInteracting:Z

.field private mVideoControlButtonListener:Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mUserInteracting:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mDuration:J

    .line 57
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mActivity:Landroid/app/Activity;

    .line 58
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isVisible:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mUserInteracting:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mDuration:J

    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mActivity:Landroid/app/Activity;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mUserInteracting:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mDuration:J

    .line 76
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mActivity:Landroid/app/Activity;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mUserInteracting:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mDuration:J

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mActivity:Landroid/app/Activity;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mVideoControlButtonListener:Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->controlsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->currentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->currentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mUserInteracting:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->internalListener:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->seekListener:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    return-object v0
.end method

.method private getProgressColorAmount(J)F
    .locals 5
    .param p1, "position"    # J

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 63
    long-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mDuration:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addExtraView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mExtraViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    return-void
.end method

.method protected animateVisibility(Z)V
    .locals 8
    .param p1, "toVisible"    # Z

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 241
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isVisible:Z

    if-ne v0, p1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->hideEmptyTextContainer:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isTextContainerEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1, v6, v7}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 250
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isLoading:Z

    if-nez v0, :cond_4

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->controlsContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->controlsContainer:Landroid/view/ViewGroup;

    invoke-direct {v1, v2, p1, v6, v7}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 256
    :cond_4
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isVisible:Z

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->onVisibilityChanged()V

    .line 259
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isVisible:Z

    if-nez v0, :cond_5

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->playPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->playPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mRotateButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public finishLoading()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 304
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isLoading:Z

    if-nez v1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 308
    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isLoading:Z

    .line 309
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->controlsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 310
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->loadingProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 312
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->updatePlaybackState(Z)V

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
    .line 205
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mExtraViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 206
    .local v0, "childCount":I
    if-gtz v0, :cond_1

    .line 207
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getExtraViews()Ljava/util/List;

    move-result-object v1

    .line 216
    :cond_0
    return-object v1

    .line 211
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 212
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 213
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mExtraViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected getLayoutResource()I
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f040195

    return v0
.end method

.method public hideDelayed(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 221
    iput-wide p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->hideDelay:J

    .line 223
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->canViewHide:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isLoading:Z

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mUserInteracting:Z

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->visibilityHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$3;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected isVisible()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isVisible:Z

    return v0
.end method

.method protected registerListeners()V
    .locals 2

    .prologue
    .line 188
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->registerListeners()V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 190
    return-void
.end method

.method public removeExtraView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mExtraViewsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 200
    return-void
.end method

.method protected retrieveViews()V
    .locals 6

    .prologue
    .line 143
    const v1, 0x7f12048b

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    .line 144
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mDuration:J

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0xeaff

    const v3, 0xdb21ce

    const-wide/16 v4, 0x0

    .line 146
    invoke-direct {p0, v4, v5}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->getProgressColorAmount(J)F

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->interpolateRGB(IIF)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 145
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 149
    const v1, 0x7f12048e

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mExtraViewsContainer:Landroid/widget/LinearLayout;

    .line 151
    const v1, 0x7f12048c

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->currentTime:Landroid/widget/TextView;

    .line 152
    const v1, 0x7f12048d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->endTime:Landroid/widget/TextView;

    .line 154
    const v1, 0x7f120485

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->titleView:Landroid/widget/TextView;

    .line 155
    const v1, 0x7f120487

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->subTitleView:Landroid/widget/TextView;

    .line 156
    const v1, 0x7f120488

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->descriptionView:Landroid/widget/TextView;

    .line 158
    const v1, 0x7f120486

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 159
    .local v0, "closeBtn":Landroid/widget/ImageView;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$1;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v1, 0x7f120492

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mRotateButton:Landroid/widget/ImageButton;

    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mRotateButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$2;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v1, 0x7f120490

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->playPauseButton:Landroid/widget/ImageButton;

    .line 175
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->playPauseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 177
    const v1, 0x7f12048f

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->previousButton:Landroid/widget/ImageButton;

    .line 178
    const v1, 0x7f120491

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->nextButton:Landroid/widget/ImageButton;

    .line 180
    const v1, 0x7f12027e

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->loadingProgress:Landroid/widget/ProgressBar;

    .line 182
    const v1, 0x7f120489

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->controlsContainer:Landroid/view/ViewGroup;

    .line 183
    const v1, 0x7f120484

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    .line 184
    return-void
.end method

.method public setControlButtonListener(Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mVideoControlButtonListener:Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;

    .line 92
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
    .line 110
    iput-wide p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mDuration:J

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->endTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public setOnUpdateProgressListener(Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mUpdateProgressListener:Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;

    .line 88
    return-void
.end method

.method public setPosition(J)V
    .locals 5
    .param p1, "position"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->currentTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0xeaff

    const v2, 0xdb21ce

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->getProgressColorAmount(J)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->interpolateRGB(IIF)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 106
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->titleView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 340
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTitle : title - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public showLoading(Z)V
    .locals 2
    .param p1, "initialLoad"    # Z

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isLoading:Z

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isLoading:Z

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->controlsContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->loadingProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 299
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->show()V

    goto :goto_0
.end method

.method public stopPlayingProgress()V
    .locals 2

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->updatePlaybackState(Z)V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->progressPollRepeater:Lcom/devbrackets/android/exomedia/util/Repeater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/Repeater;->setRepeatListener(Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;)V

    .line 326
    return-void
.end method

.method public switchAnimateVisibility()V
    .locals 1

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->animateVisibility(Z)V

    .line 317
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePlayPauseImage(Z)V
    .locals 3
    .param p1, "isPlaying"    # Z

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->updatePlayPauseImage(Z)V

    .line 331
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->playPauseButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0339

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 331
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 334
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a033a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public updateProgress(JJI)V
    .locals 7
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
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mUpdateProgressListener:Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mUpdateProgressListener:Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;->onUpdateProgress(JJI)V

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mUserInteracting:Z

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    .line 129
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p5

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0xeaff

    const v2, 0xdb21ce

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->getProgressColorAmount(J)F

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->interpolateRGB(IIF)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->mSeekBar:Landroid/widget/SeekBar;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->currentTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->formatMs(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_1
    return-void
.end method

.method protected updateTextContainerVisibility()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    .line 272
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isVisible:Z

    if-nez v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isTextContainerEmpty()Z

    move-result v0

    .line 277
    .local v0, "emptyText":Z
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->hideEmptyTextContainer:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 279
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 281
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->hideEmptyTextContainer:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    .line 282
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 284
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->textContainer:Landroid/view/ViewGroup;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v6, v7}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
