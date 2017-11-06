.class public Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;
.super Ljava/lang/Object;
.source "ForwardRewindInputListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListenerAdapter;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;
    }
.end annotation


# static fields
.field private static final ONE_SECOND:I = 0x3e8


# instance fields
.field private mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

.field private mForwardRewindEnabled:Z

.field private mKeyPressed:Z

.field private mOnPlayerControlListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

.field private mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 1
    .param p1, "playerController"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mKeyPressed:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mForwardRewindEnabled:Z

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 62
    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->setCancel()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 77
    :cond_0
    return-void
.end method

.method private cancelEventAndPlay(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 200
    .local v0, "id":I
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    if-ne v0, v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mOnPlayerControlListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    if-eqz v1, :cond_1

    .line 202
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mOnPlayerControlListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;->onPlayerNext()V

    .line 214
    :cond_0
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 215
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->next()V

    goto :goto_0

    .line 206
    :cond_2
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mOnPlayerControlListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    if-eqz v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mOnPlayerControlListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;->onPlayerPrev()V

    goto :goto_0

    .line 210
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->prev()V

    goto :goto_0
.end method

.method private cancelEventAndSeek(I)V
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const-wide/16 v4, 0x3e8

    .line 218
    packed-switch p1, :pswitch_data_0

    .line 228
    :goto_0
    return-void

    .line 220
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->seek(J)V

    goto :goto_0

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->getPosition()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->seek(J)V

    goto :goto_0

    .line 218
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleKeyEvent(I)V
    .locals 6
    .param p1, "keyCode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 186
    packed-switch p1, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v5, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTouchEvent(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 178
    .local v0, "id":I
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->next_btn:I

    if-ne v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->prev_btn:I

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startControlTask()V
    .locals 1

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->cancel()V

    .line 173
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mControlTask:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 174
    return-void
.end method


# virtual methods
.method public onForward()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->forward()V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mOnPlayerControlListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mOnPlayerControlListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;->onPlayerForward()V

    .line 161
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v6, 0x16

    const/16 v5, 0x15

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 113
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->cancel()V

    .line 149
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mKeyPressed:Z

    :cond_0
    :goto_0
    move v2, v3

    .line 152
    :cond_1
    :goto_1
    return v2

    .line 115
    :pswitch_0
    if-eq p2, v5, :cond_2

    if-ne p2, v6, :cond_0

    .line 124
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mKeyPressed:Z

    if-nez v3, :cond_1

    .line 125
    iget-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mForwardRewindEnabled:Z

    if-eqz v3, :cond_3

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->startControlTask()V

    .line 127
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->handleKeyEvent(I)V

    .line 129
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mKeyPressed:Z

    goto :goto_1

    .line 135
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->cancel()V

    .line 136
    if-eq p2, v5, :cond_4

    if-ne p2, v6, :cond_5

    .line 138
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mForwardRewindEnabled:Z

    if-eqz v2, :cond_5

    .line 139
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 140
    .local v0, "pressedTime":J
    const-wide/16 v4, 0x12c

    cmp-long v2, v0, v4

    if-gez v2, :cond_5

    .line 141
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->cancelEventAndSeek(I)V

    .line 145
    .end local v0    # "pressedTime":J
    :cond_5
    iput-boolean v3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mKeyPressed:Z

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRewind()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->rewind()V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mOnPlayerControlListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mOnPlayerControlListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;->onPlayerRewind()V

    .line 169
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    return v2

    .line 83
    :pswitch_1
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mForwardRewindEnabled:Z

    if-eqz v2, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->startControlTask()V

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->handleTouchEvent(Landroid/view/View;)V

    goto :goto_0

    .line 89
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->cancel()V

    goto :goto_0

    .line 93
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->cancel()V

    .line 94
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mForwardRewindEnabled:Z

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 96
    .local v0, "pressedTime":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->cancelEventAndPlay(Landroid/view/View;)V

    goto :goto_0

    .line 102
    .end local v0    # "pressedTime":J
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->cancelEventAndPlay(Landroid/view/View;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setController(Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;)V
    .locals 0
    .param p1, "controller"    # Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mPlayerController:Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    .line 70
    return-void
.end method

.method public setForwardRewindEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mForwardRewindEnabled:Z

    .line 66
    return-void
.end method

.method public setOnPlayerControlListener(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener;->mOnPlayerControlListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListener;

    .line 232
    return-void
.end method
