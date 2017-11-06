.class Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;
.super Ljava/lang/Object;
.source "SeekController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeekTouchController"
.end annotation


# instance fields
.field private mIsEnabled:Z

.field private final mScrubbingBar:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scrubbingBar"    # Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    .prologue
    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;->mIsEnabled:Z

    .line 304
    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;->mScrubbingBar:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    .line 305
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;->mIsEnabled:Z

    if-nez v0, :cond_0

    .line 314
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;->mScrubbingBar:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 320
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;->mScrubbingBar:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->setScrubbingSpeed(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;->mScrubbingBar:Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/progress/MusicProgressBarScrubbing;->cancelScrubbingSpeedInfoPopup()V

    goto :goto_1

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setTouchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/player/SeekController$SeekTouchController;->mIsEnabled:Z

    .line 309
    return-void
.end method
