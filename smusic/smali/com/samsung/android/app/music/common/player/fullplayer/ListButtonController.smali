.class public final Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;
.super Ljava/lang/Object;
.source "ListButtonController.java"


# instance fields
.field private final mListButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const v0, 0x7f120010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;->mListButton:Landroid/view/View;

    .line 17
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;->mListButton:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;->mListButton:Landroid/view/View;

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->TOP_ABOVE:I

    sget v2, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$Gravity;->CENTER_HORIZONTAL:I

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView;->setView(Landroid/view/View;I)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;->mListButton:Landroid/view/View;

    const v1, 0x7f0a0144

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->setButtonContentDescriptionAll(Landroid/content/Context;Landroid/view/View;I)V

    .line 24
    return-void
.end method


# virtual methods
.method public setFocusable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/ListButtonController;->mListButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 28
    return-void
.end method
