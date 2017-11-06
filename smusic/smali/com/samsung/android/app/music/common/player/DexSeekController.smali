.class public Lcom/samsung/android/app/music/common/player/DexSeekController;
.super Ljava/lang/Object;
.source "DexSeekController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;


# static fields
.field private static final CTRL_SEEK_INTERVAL:J = 0x2710L

.field private static final ONE_SECOND:J = 0x3e8L

.field private static final SEEK_INTERVAL:J = 0x1388L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

.field private mKeyPressed:Z

.field private final mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/music/common/player/DexSeekController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/player/DexSeekController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 1
    .param p1, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mKeyPressed:Z

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 30
    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->setCancel()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 114
    :cond_0
    return-void
.end method

.method private isCtrlShiftPressed(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private proceesLeftKeyEvent(Landroid/view/KeyEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->seek(J)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->seek(J)V

    goto :goto_0
.end method

.method private proceesRightKeyEvent(Landroid/view/KeyEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->seek(J)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->seek(J)V

    goto :goto_0
.end method

.method private startControlTask(I)V
    .locals 4
    .param p1, "direction"    # I

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/DexSeekController;->cancel()V

    .line 118
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 120
    return-void
.end method


# virtual methods
.method public onForward()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->forward()V

    .line 82
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 34
    sget-object v1, Lcom/samsung/android/app/music/common/player/DexSeekController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyDown keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, "handled":Z
    const/16 v1, 0x15

    if-ne p1, v1, :cond_1

    .line 38
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/DexSeekController;->proceesLeftKeyEvent(Landroid/view/KeyEvent;)V

    .line 39
    const/4 v0, 0x1

    .line 56
    :cond_0
    :goto_0
    return v0

    .line 40
    :cond_1
    const/16 v1, 0x16

    if-ne p1, v1, :cond_2

    .line 41
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/DexSeekController;->proceesRightKeyEvent(Landroid/view/KeyEvent;)V

    .line 42
    const/4 v0, 0x1

    goto :goto_0

    .line 43
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/DexSeekController;->isCtrlShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x22

    if-ne p1, v1, :cond_4

    .line 44
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mKeyPressed:Z

    if-nez v1, :cond_3

    .line 45
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/common/player/DexSeekController;->startControlTask(I)V

    .line 46
    iput-boolean v4, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mKeyPressed:Z

    .line 48
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/DexSeekController;->isCtrlShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_0

    .line 50
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mKeyPressed:Z

    if-nez v1, :cond_5

    .line 51
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/player/DexSeekController;->startControlTask(I)V

    .line 52
    iput-boolean v4, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mKeyPressed:Z

    .line 54
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 61
    sget-object v1, Lcom/samsung/android/app/music/common/player/DexSeekController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKeyUp keyCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "handled":Z
    const/16 v1, 0x15

    if-ne p1, v1, :cond_1

    .line 65
    const/4 v0, 0x1

    .line 73
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/player/DexSeekController;->cancel()V

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mKeyPressed:Z

    .line 76
    return v0

    .line 66
    :cond_1
    const/16 v1, 0x16

    if-ne p1, v1, :cond_2

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    .line 68
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/DexSeekController;->isCtrlShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x22

    if-ne p1, v1, :cond_3

    .line 69
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/common/player/DexSeekController;->isCtrlShiftPressed(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2e

    if-ne p1, v1, :cond_0

    .line 71
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onRewind()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/DexSeekController;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->rewind()V

    .line 87
    return-void
.end method
