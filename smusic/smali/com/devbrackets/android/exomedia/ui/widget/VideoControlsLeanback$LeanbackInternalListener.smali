.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;
.super Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
.source "VideoControlsLeanback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LeanbackInternalListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    return-void
.end method


# virtual methods
.method public onFastForwardClicked()Z
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-nez v1, :cond_0

    .line 533
    const/4 v1, 0x0

    .line 542
    :goto_0
    return v1

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v0, v1, -0x2710

    .line 537
    .local v0, "newPosition":I
    if-gez v0, :cond_1

    .line 538
    const/4 v0, 0x0

    .line 541
    :cond_1
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->performSeek(I)V

    .line 542
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onRewindClicked()Z
    .locals 2

    .prologue
    .line 547
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-nez v1, :cond_0

    .line 548
    const/4 v1, 0x0

    .line 557
    :goto_0
    return v1

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getCurrentPosition()I

    move-result v1

    add-int/lit16 v0, v1, 0x2710

    .line 552
    .local v0, "newPosition":I
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v1, v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 556
    :cond_1
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v1, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->performSeek(I)V

    .line 557
    const/4 v1, 0x1

    goto :goto_0
.end method
