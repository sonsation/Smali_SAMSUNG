.class final Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;
.super Ljava/lang/Object;
.source "MiniQueueButtonController.java"


# instance fields
.field private mQueueButton:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const v2, 0x7f1204ae

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 22
    .local v1, "queueButtonStub":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewStub;

    if-eqz v2, :cond_0

    .line 23
    check-cast v1, Landroid/view/ViewStub;

    .end local v1    # "queueButtonStub":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;->mQueueButton:Landroid/view/View;

    .line 25
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;->mQueueButton:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;->mQueueButton:Landroid/view/View;

    new-instance v3, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController$1;-><init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;->mQueueButton:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;->setAirView(Landroid/content/Context;Landroid/view/View;)V

    .line 36
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;->mQueueButton:Landroid/view/View;

    const v3, 0x7f0a0157

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 38
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    return-void
.end method

.method private setAirView(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v0, v1

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method getButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniQueueButtonController;->mQueueButton:Landroid/view/View;

    return-object v0
.end method
