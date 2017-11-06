.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;
.super Landroid/os/Handler;
.source "SimpleAVPlayerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InfoRequestHandler"
.end annotation


# instance fields
.field private mPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "player"    # Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 551
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 552
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    .line 553
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayer;->getMediaInfo()V

    goto :goto_0
.end method

.method public removeRequest()V
    .locals 1

    .prologue
    .line 564
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 565
    return-void
.end method

.method public requestInfo()V
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;->sendEmptyMessage(I)Z

    .line 557
    return-void
.end method

.method public requestInfo(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 560
    const/4 v0, 0x0

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$InfoRequestHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 561
    return-void
.end method
