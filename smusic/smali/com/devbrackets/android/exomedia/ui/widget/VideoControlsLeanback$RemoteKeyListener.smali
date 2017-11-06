.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;
.super Ljava/lang/Object;
.source "VideoControlsLeanback.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RemoteKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;


# direct methods
.method protected constructor <init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 421
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    :cond_0
    :goto_0
    return v0

    .line 425
    :cond_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 427
    :sswitch_0
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-boolean v2, v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->isVisible:Z

    if-eqz v2, :cond_0

    .line 428
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0, v4, v5}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->hideDelayed(J)V

    move v0, v1

    .line 429
    goto :goto_0

    .line 434
    :sswitch_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->showTemporary()V

    move v0, v1

    .line 435
    goto :goto_0

    .line 438
    :sswitch_2
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0, v4, v5}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->hideDelayed(J)V

    move v0, v1

    .line 439
    goto :goto_0

    .line 442
    :sswitch_3
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->showTemporary()V

    .line 443
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v2, v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentFocus:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->focusPrevious(Landroid/view/View;)V

    move v0, v1

    .line 444
    goto :goto_0

    .line 447
    :sswitch_4
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->showTemporary()V

    .line 448
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v2, v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentFocus:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->focusNext(Landroid/view/View;)V

    move v0, v1

    .line 449
    goto :goto_0

    .line 452
    :sswitch_5
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->showTemporary()V

    .line 453
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->currentFocus:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    move v0, v1

    .line 454
    goto :goto_0

    .line 457
    :sswitch_6
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onPlayPauseClick()V

    move v0, v1

    .line 458
    goto :goto_0

    .line 461
    :sswitch_7
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v2, v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v2, v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 462
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->start()V

    move v0, v1

    .line 463
    goto :goto_0

    .line 468
    :sswitch_8
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v2, v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v2, v2, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 469
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    iget-object v0, v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->videoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pause()V

    move v0, v1

    .line 470
    goto/16 :goto_0

    .line 475
    :sswitch_9
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onNextClick()V

    move v0, v1

    .line 476
    goto/16 :goto_0

    .line 479
    :sswitch_a
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onPreviousClick()V

    move v0, v1

    .line 480
    goto/16 :goto_0

    .line 483
    :sswitch_b
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onRewindClick()V

    move v0, v1

    .line 484
    goto/16 :goto_0

    .line 487
    :sswitch_c
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;->this$0:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->onFastForwardClick()V

    move v0, v1

    .line 488
    goto/16 :goto_0

    .line 425
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x17 -> :sswitch_5
        0x55 -> :sswitch_6
        0x57 -> :sswitch_9
        0x58 -> :sswitch_a
        0x59 -> :sswitch_b
        0x5a -> :sswitch_c
        0x7e -> :sswitch_7
        0x7f -> :sswitch_8
    .end sparse-switch
.end method
