.class final Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;
.super Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerComponentAdapter;
.source "PlayController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPlay:Landroid/view/View;

.field private final mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerComponentAdapter;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->mContext:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 25
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->play_pause_btn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->mPlay:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->mPlay:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->setAirView(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    return-object v0
.end method

.method private setAirView(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->mPlay:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 40
    :cond_0
    return-void
.end method

.method private updatePlayState(Z)V
    .locals 3
    .param p1, "isPlaying"    # Z

    .prologue
    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->mPlay:Landroid/view/View;

    if-eqz p1, :cond_0

    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_pause:I

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isActivated()Z

    move-result v0

    if-ne v0, p1, :cond_1

    .line 49
    :goto_1
    return-void

    .line 43
    :cond_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->tts_play:I

    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->mPlay:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onPlayStateChanged(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 1
    .param p1, "soundPlayer"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->isPlaying()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/PlayController;->updatePlayState(Z)V

    .line 54
    return-void
.end method
