.class final Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;
.super Landroid/os/Handler;
.source "ScreenOffMusicHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_OFF:I = 0x1

.field private static final MSG_SCREEN_OFF_TIME_OUT:I = 0x2

.field private static final MSG_SCREEN_ON:I = 0x0

.field private static final SCREEN_OFF_BY_NONE:I = 0x0

.field private static final SCREEN_OFF_BY_TIME_OUT:I = 0x1

.field private static final SCREEN_OFF_DURATION:I = 0x12c

.field private static final SCREEN_OFF_TIME_OUT:I = 0x1b58


# instance fields
.field private final mOnAnimationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addOnAnimationListener(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 94
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    .line 97
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;->onScreenOnAnimationEnd()V

    goto :goto_1

    .line 99
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOffTimeOut()V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    .line 103
    .restart local v0    # "listener":Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_3
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;->onScreenOffAnimationEnd(Z)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 107
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->startScreenOff(Z)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method isGoingToScreenOff()Z
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method startScreenOff(Z)V
    .locals 5
    .param p1, "isTimeOut"    # Z

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    .line 66
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;->onScreenOffAnimationStart()V

    goto :goto_0

    .line 68
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeMessages(I)V

    .line 69
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeMessages(I)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 72
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_1

    :goto_1
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 73
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 74
    return-void

    .line 72
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method startScreenOffTimeOut()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 80
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeMessages(I)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeMessages(I)V

    .line 82
    const-wide/16 v0, 0x1b58

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 83
    return-void
.end method

.method startScreenOn()V
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->mOnAnimationListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;

    .line 48
    .local v0, "listener":Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;->onScreenOnAnimationStart()V

    goto :goto_0

    .line 50
    .end local v0    # "listener":Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler$OnAnimationListener;
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->removeMessages(I)V

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicHandler;->sendEmptyMessage(I)Z

    .line 52
    return-void
.end method
