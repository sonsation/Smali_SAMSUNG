.class public final Lcom/samsung/android/app/music/common/player/SeekController;
.super Ljava/lang/Object;
.source "SeekController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;,
        Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;,
        Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;,
        Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;,
        Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;
    }
.end annotation


# static fields
.field private static final NEXT_ANIMATION_DURATION:J = 0x12cL

.field private static final sAnimatedGotoInterpolator:Landroid/view/animation/OvershootInterpolator;


# instance fields
.field private final mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mCurrentTimeTextView:Landroid/widget/TextView;

.field private final mDurationTextView:Landroid/widget/TextView;

.field private mIsInitialPlaystate:Z

.field private mLastSeekAnimationMediaId:J

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mSeekTouchController:Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;

.field private mUiAnimator:Landroid/animation/ValueAnimator;

.field private final mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    sput-object v0, Lcom/samsung/android/app/music/common/player/SeekController;->sAnimatedGotoInterpolator:Landroid/view/animation/OvershootInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;ZLcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .param p4, "forwardRewindInputListener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;
    .param p5, "enableScrubbing"    # Z
    .param p6, "coreMediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mIsInitialPlaystate:Z

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mLastSeekAnimationMediaId:J

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 79
    .local v6, "context":Landroid/content/Context;
    const v0, 0x7f1201f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    .line 80
    const v0, 0x7f1201f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f1201f6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mDurationTextView:Landroid/widget/TextView;

    .line 83
    if-eqz p5, :cond_1

    new-instance v8, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    invoke-direct {v8, p1, p2}, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 85
    .local v8, "scrubbingBar":Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;

    invoke-direct {v0, v6, v8}, Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekTouchController:Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mDurationTextView:Landroid/widget/TextView;

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;-><init>(Landroid/app/Activity;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekTouchController:Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p4}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-direct {v1, v6, v2}, Lcom/samsung/android/app/music/common/player/SeekController$TalkBackAccessibilityDelegate;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-direct {v1, v2, v8, p3}, Lcom/samsung/android/app/music/common/player/SeekController$OnSeekBarChangeListenerImpl;-><init>(Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    .line 103
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v7, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-direct {v7, p1, v0}, Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;)V

    .line 106
    .local v7, "onAirSeekBarPopupListenerImpl":Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-static {v0, v7}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/widget/SeekBar;Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;)V

    .line 108
    .end local v7    # "onAirSeekBarPopupListenerImpl":Lcom/samsung/android/app/music/common/player/SeekController$OnAirSeekBarPopupListenerImpl;
    :cond_0
    invoke-interface {p6, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 109
    iput-object p6, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 110
    return-void

    .line 83
    .end local v8    # "scrubbingBar":Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/SeekController;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/common/player/SeekController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/player/SeekController;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/SeekController;->updatePlaybackState()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/player/SeekController;)Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/SeekController;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    return-object v0
.end method

.method private animatedGoto0()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 226
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/SeekController;->needAnimation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 227
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    .line 228
    invoke-virtual {v4}, Landroid/widget/SeekBar;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    .line 230
    .local v3, "seekBarWidth":F
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/SeekController;->updatePlaybackState()V

    .line 279
    .end local v3    # "seekBarWidth":F
    :goto_0
    return-void

    .line 234
    .restart local v3    # "seekBarWidth":F
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v4, v7}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->setIsCustomDrawingProgress(Z)V

    .line 235
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->stop()V

    .line 236
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    .line 237
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 239
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    int-to-float v2, v4

    .line 240
    .local v2, "progressDelta":F
    div-float v1, v2, v3

    .line 241
    .local v1, "overShootK":F
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v0

    .line 242
    .local v0, "oldOffset":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    aput v5, v4, v6

    aput v6, v4, v7

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    .line 243
    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiAnimator:Landroid/animation/ValueAnimator;

    .line 244
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiAnimator:Landroid/animation/ValueAnimator;

    sget-object v5, Lcom/samsung/android/app/music/common/player/SeekController;->sAnimatedGotoInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 245
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/app/music/common/player/SeekController$1;

    invoke-direct {v5, p0, v1, v0}, Lcom/samsung/android/app/music/common/player/SeekController$1;-><init>(Lcom/samsung/android/app/music/common/player/SeekController;FI)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 258
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/samsung/android/app/music/common/player/SeekController$2;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/app/music/common/player/SeekController$2;-><init>(Lcom/samsung/android/app/music/common/player/SeekController;I)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 274
    iget-object v4, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 276
    .end local v0    # "oldOffset":I
    .end local v1    # "overShootK":F
    .end local v2    # "progressDelta":F
    .end local v3    # "seekBarWidth":F
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/SeekController;->updatePlaybackState()V

    .line 277
    iput-boolean v6, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mIsInitialPlaystate:Z

    goto :goto_0
.end method

.method private doOnPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Z)V
    .locals 4
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .param p2, "cached"    # Z

    .prologue
    .line 184
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->setPlayerType(I)V

    .line 185
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    .line 186
    .local v0, "state":I
    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateDurationRelatedInfo(J)V

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlaySpeed()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updatePlaySpeed(F)V

    .line 191
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->isCustomDrawingProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->stop()V

    .line 214
    :goto_0
    return-void

    .line 194
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 204
    if-eqz p2, :cond_3

    .line 206
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateUiImmediate(J)V

    .line 210
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->stop()V

    goto :goto_0

    .line 196
    :pswitch_0
    if-nez p2, :cond_2

    .line 197
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateUiImmediate(J)V

    .line 199
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->start()V

    goto :goto_0

    .line 208
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateUiImmediate(J)V

    goto :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private needAnimation()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playbackPositionChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 6
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 170
    iget-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mLastSeekAnimationMediaId:J

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 171
    .local v0, "res":Z
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mLastSeekAnimationMediaId:J

    .line 172
    return v0

    .line 170
    .end local v0    # "res":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePlaybackState()V
    .locals 3

    .prologue
    .line 282
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->setIsCustomDrawingProgress(Z)V

    .line 283
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mCoreMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 284
    .local v0, "s":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    if-eqz v0, :cond_0

    .line 285
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/player/SeekController;->doOnPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Z)V

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentTimeTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mCurrentTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDurationTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mDurationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public onCreateCalled(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    return-void
.end method

.method public onDestroyCalled()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->quit()V

    .line 157
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 223
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/SeekController;->playbackPositionChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mIsInitialPlaystate:Z

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/SeekController;->animatedGoto0()V

    .line 165
    :cond_0
    const-string v1, "com.samsung.android.app.music.metadata.CP_ATTRS"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 166
    .local v0, "cpAttrs":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->isOnline(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->updateCurrentSongInfo(Z)V

    .line 167
    return-void
.end method

.method public onPauseCalled()V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mIsInitialPlaystate:Z

    if-nez v0, :cond_0

    .line 178
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/common/player/SeekController;->doOnPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Z)V

    .line 180
    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mIsInitialPlaystate:Z

    .line 181
    return-void
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
    .line 219
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public onStartCalled()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onStopCalled()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mUiUpdater:Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/SeekController$UiUpdater;->stop()V

    .line 152
    return-void
.end method

.method public setSeekTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController;->mSeekTouchController:Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;->setTouchEnabled(Z)V

    .line 126
    return-void
.end method
