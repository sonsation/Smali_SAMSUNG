.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "SoundPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field private mCallbackMediaSession:Landroid/media/session/MediaSession;

.field private mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Landroid/media/session/MediaSession;)V
    .locals 0
    .param p1, "soundPlayer"    # Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
    .param p2, "mediaSession"    # Landroid/media/session/MediaSession;

    .prologue
    .line 659
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 660
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .line 661
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mCallbackMediaSession:Landroid/media/session/MediaSession;

    .line 662
    return-void
.end method

.method private handleKeyEventActionDown(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 742
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyEventActionDown() - keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-nez v0, :cond_0

    .line 776
    :goto_0
    return-void

    .line 747
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 750
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->togglePlay()V

    goto :goto_0

    .line 753
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->stop()V

    goto :goto_0

    .line 756
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->pause()V

    goto :goto_0

    .line 759
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$1200(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0

    .line 762
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->next()V

    goto :goto_0

    .line 765
    :sswitch_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->prev()V

    goto :goto_0

    .line 768
    :sswitch_6
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$1400(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;I)V

    goto :goto_0

    .line 771
    :sswitch_7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$1400(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;I)V

    goto :goto_0

    .line 747
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_4
        0x58 -> :sswitch_5
        0x59 -> :sswitch_6
        0x5a -> :sswitch_7
        0x7e -> :sswitch_3
        0x7f -> :sswitch_2
    .end sparse-switch
.end method

.method private handleKeyEventActionUp(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 779
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyEventActionUp() - keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-nez v0, :cond_0

    .line 792
    :goto_0
    return-void

    .line 784
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 787
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$1500(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0

    .line 784
    nop

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 719
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaSession onMediaButtonEvent() - mediaButtonIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mCallbackMediaSession:Landroid/media/session/MediaSession;

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    .line 723
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 725
    .local v0, "ke":Landroid/view/KeyEvent;
    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 738
    .end local v0    # "ke":Landroid/view/KeyEvent;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v1

    :goto_1
    return v1

    .line 728
    .restart local v0    # "ke":Landroid/view/KeyEvent;
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->handleKeyEventActionDown(I)V

    .line 729
    const/4 v1, 0x1

    goto :goto_1

    .line 731
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->handleKeyEventActionUp(I)V

    goto :goto_0

    .line 726
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 674
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->pause()V

    .line 678
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 666
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession onPlay()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$1200(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    .line 670
    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 690
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession onSeekTo() - pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$1300(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->seek(J)V

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession onSeekTo() pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ignore this, our ff/rew task is working now"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSkipToNext()V
    .locals 2

    .prologue
    .line 703
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession onSkipToNext()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->next()V

    .line 707
    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    .prologue
    .line 711
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession onSkipToPrevious()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->prev()V

    .line 715
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 682
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->stop()V

    .line 686
    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 795
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionCallback release()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mSoundPlayer:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .line 797
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->mCallbackMediaSession:Landroid/media/session/MediaSession;

    .line 798
    return-void
.end method
