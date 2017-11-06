.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;
.super Landroid/os/Handler;
.source "NowPlayingCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputPreventHandler"
.end annotation


# static fields
.field private static final BLOCK_TIME_INTERVAL:I = 0x3e8


# instance fields
.field private mIsPrevent:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 582
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->mIsPrevent:Z

    .line 583
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->mIsPrevent:Z

    .line 598
    return-void
.end method

.method isPrevent()Z
    .locals 1

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->mIsPrevent:Z

    return v0
.end method

.method setPreventEventForAwhile()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 590
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->mIsPrevent:Z

    .line 591
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->removeMessages(I)V

    .line 592
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor$InputPreventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 593
    return-void
.end method
