.class public final Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;
.super Ljava/lang/Object;
.source "PlayController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mNext:Landroid/view/View;

.field private mOnPlayClickListener:Landroid/view/View$OnClickListener;

.field private final mPauseToPlayAnimationResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final mPlay:Landroid/view/View;

.field private final mPlayToPauseAnimationResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

.field private final mPrev:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .param p4, "forwardRewindInputListener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;
    .param p5, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    const/4 v6, -0x1

    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;II)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .param p4, "forwardRewindInputListener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;
    .param p5, "mediaChangeObservable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .param p6, "playToPauseAnimationResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p7, "pauseToPlayAnimationResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mActivity:Landroid/app/Activity;

    .line 68
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mContext:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 71
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    .line 72
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    .line 73
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_btn:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    .line 75
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;-><init>()V

    .line 76
    .local v0, "convertTouchEventListener":Lcom/samsung/android/app/musiclibrary/core/view/ConvertTouchEventListener;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->tts_previous:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    invoke-virtual {v1, p4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->tts_next:I

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_2
    iput p6, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayToPauseAnimationResId:I

    .line 99
    iput p7, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPauseToPlayAnimationResId:I

    .line 101
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setAirView(Landroid/app/Activity;)V

    .line 102
    invoke-interface {p5, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 103
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mOnPlayClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private setAirView(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$1;)V

    .line 119
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v3, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirViewPopupListener;)V

    .line 127
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$OnAirViewPopupListenerImpl;
    :cond_1
    return-void
.end method

.method private setPrevNextEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 155
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 156
    .local v0, "prevNextAlpha":F
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 164
    :cond_1
    return-void

    .line 155
    .end local v0    # "prevNextAlpha":F
    :cond_2
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_0
.end method

.method private updateControlButtonEnabled(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4
    .param p1, "meta"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    const/4 v1, 0x0

    .line 226
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrevNextControllable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    const-string v2, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v0, v2

    .line 228
    .local v0, "listCount":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setPrevNextEnabled(Z)V

    .line 232
    .end local v0    # "listCount":I
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->setPrevNextEnabled(Z)V

    goto :goto_0
.end method

.method private updatePlayState(Z)V
    .locals 6
    .param p1, "isPlaying"    # Z

    .prologue
    const/4 v5, -0x1

    .line 130
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    if-eqz p1, :cond_1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_pause:I

    :goto_0
    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 132
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isActivated()Z

    move-result v2

    if-ne v2, p1, :cond_2

    .line 152
    :cond_0
    :goto_1
    return-void

    .line 130
    :cond_1
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->tts_play:I

    goto :goto_0

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->setActivated(Z)V

    .line 136
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayToPauseAnimationResId:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPauseToPlayAnimationResId:I

    if-eq v2, v5, :cond_0

    .line 138
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 139
    .local v1, "iv":Landroid/widget/ImageView;
    if-eqz p1, :cond_3

    .line 140
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayToPauseAnimationResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    :goto_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 146
    .local v0, "d":Landroid/graphics/drawable/AnimationDrawable;
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isLaidOut()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 147
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    .line 142
    .end local v0    # "d":Landroid/graphics/drawable/AnimationDrawable;
    :cond_3
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPauseToPlayAnimationResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 149
    .restart local v0    # "d":Landroid/graphics/drawable/AnimationDrawable;
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public changeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 1
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 108
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 110
    return-void
.end method

.method public getNextButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    return-object v0
.end method

.method public getNextView()Landroid/view/View;
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mNext:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->next_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    return-object v0
.end method

.method public getPlayView()Landroid/view/View;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlay:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrevButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    return-object v0
.end method

.method public getPrevView()Landroid/view/View;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPrev:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->prev_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 212
    const-string v1, "com.samsung.android.app.music.core.state.DRM_REQUEST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 214
    .local v0, "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->updatePlayState(Z)V

    .line 218
    .end local v0    # "state":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->updateControlButtonEnabled(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 197
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->updatePlayState(Z)V

    .line 203
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
    .line 208
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    return-void
.end method

.method public setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0
    .param p1, "controller"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 114
    return-void
.end method

.method public setOnPlayClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mOnPlayClickListener:Landroid/view/View$OnClickListener;

    .line 192
    return-void
.end method

.method public updateControlButtonEnabled()V
    .locals 2

    .prologue
    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 222
    .local v0, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->updateControlButtonEnabled(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 223
    return-void
.end method
