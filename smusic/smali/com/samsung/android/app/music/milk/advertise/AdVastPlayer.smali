.class public Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;
.super Landroid/widget/LinearLayout;
.source "AdVastPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/mapps/android/listner/AdVideoPlayerErrorListener;
.implements Lcom/mapps/android/listner/AdVideoPlayerListener;
.implements Lcom/mapps/android/listner/AdVideoPlayerListenerStart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Advert.AdVideoView"


# instance fields
.field adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

.field delayHandler:Landroid/os/Handler;

.field videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->delayHandler:Landroid/os/Handler;

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->delayHandler:Landroid/os/Handler;

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->init()V

    .line 42
    return-void
.end method

.method private audioFocus()V
    .locals 3

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 79
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 80
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 50
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->setOrientation(I)V

    .line 51
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    new-instance v1, Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mapps/android/view/AdVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->addView(Landroid/view/View;)V

    .line 57
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->onDestory()V

    .line 75
    :cond_0
    return-void
.end method

.method public onAdPlayerDurationReceive(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    .line 192
    const-string v0, "Advert.AdVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManPlayerDurationReceive : duration :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onAdPlayerReceive(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "code"    # I
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 103
    const-string v0, "Advert.AdVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onManPlayerReceive code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sparse-switch p2, :sswitch_data_0

    .line 184
    const-string v0, "Advert.AdVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default code :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 108
    :sswitch_0
    const-string v0, "Advert.AdVideoView"

    const-string v1, "MAN_PLAYER_AD_START"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;->onBlock(Z)V

    .line 112
    const-string v0, "Advert.AdVideoView"

    const-string/jumbo v1, "onManPlayerReceive : ManVideoPlayer.MAN_PLAYER_AD_START block true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->delayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$2;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 129
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "Advert.AdVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlayCompleted code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;->onPlayCompleted()V

    goto :goto_0

    .line 147
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->delayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$3;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "Advert.AdVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network error while loading ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;->onPlayCompleted()V

    goto :goto_0

    .line 162
    :sswitch_3
    const-string v0, "Advert.AdVideoView"

    const-string v1, "AdVideoPlayer.AD_ID_NO_AD"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;->onChangeCp()V

    goto/16 :goto_0

    .line 166
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->delayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$4;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "Advert.AdVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not to load ad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;->onPlayCompleted()V

    goto/16 :goto_0

    .line 179
    :sswitch_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;->onError(I)V

    goto/16 :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        -0x384 -> :sswitch_4
        -0x2bc -> :sswitch_3
        -0x258 -> :sswitch_2
        -0x1f4 -> :sswitch_2
        -0x190 -> :sswitch_2
        -0x12c -> :sswitch_2
        -0xc8 -> :sswitch_2
        -0x64 -> :sswitch_2
        -0x1 -> :sswitch_5
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x7 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0x191 -> :sswitch_2
        0x192 -> :sswitch_2
    .end sparse-switch
.end method

.method public onAudioFocusChange(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 47
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 197
    const-string v0, "Advert.AdVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : val 1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " val 2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public onReceiveRunningStart(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "i"    # I

    .prologue
    .line 202
    const-string v0, "Advert.AdVideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceiveRunningStart : val 1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->onPause()V

    .line 63
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->onResume()V

    .line 69
    :cond_0
    return-void
.end method

.method public showVideoAd(Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->videoListener:Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$AdVideoViewListener;

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->audioFocus()V

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    const-string v1, "1251"

    const-string v2, "31019"

    const-string v3, "802405"

    invoke-virtual {v0, v1, v2, v3}, Lcom/mapps/android/view/AdVideoPlayer;->setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;->setVideoMode(I)V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer;->setAdVideoPlayerListner(Lcom/mapps/android/listner/AdVideoPlayerListener;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer;->setAdVideoPlayerErrorListner(Lcom/mapps/android/listner/AdVideoPlayerErrorListener;)V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer;->setAdVideoPlayerStartListner(Lcom/mapps/android/listner/AdVideoPlayerListenerStart;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;->adVideoPlayer:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->showAd()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer$1;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdVastPlayer;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method
