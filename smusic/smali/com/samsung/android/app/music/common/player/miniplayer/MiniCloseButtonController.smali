.class final Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;
.super Ljava/lang/Object;
.source "MiniCloseButtonController.java"


# instance fields
.field private mCloseButton:Landroid/view/View;

.field private mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "playerLogger"    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p3, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 24
    const v2, 0x7f1204b0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "closeButtonStub":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 26
    check-cast v0, Landroid/view/ViewStub;

    .end local v0    # "closeButtonStub":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->mCloseButton:Landroid/view/View;

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->mCloseButton:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 30
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->mCloseButton:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController$1;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->mCloseButton:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->setAirView(Landroid/content/Context;Landroid/view/View;)V

    .line 38
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->mCloseButton:Landroid/view/View;

    const v3, 0x7f0a01db

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 40
    .end local v1    # "context":Landroid/content/Context;
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    return-object v0
.end method

.method private setAirView(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method getButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->mCloseButton:Landroid/view/View;

    return-object v0
.end method

.method public setPlayerLogger(Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;)V
    .locals 0
    .param p1, "logger"    # Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniCloseButtonController;->mPlayerLogger:Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    .line 54
    return-void
.end method
