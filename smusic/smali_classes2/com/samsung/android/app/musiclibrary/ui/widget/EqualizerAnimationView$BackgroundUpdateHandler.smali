.class Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;
.super Landroid/os/Handler;
.source "EqualizerAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundUpdateHandler"
.end annotation


# static fields
.field private static final MSG_UPDATE_PAUSE:I = 0x1

.field private static final MSG_UPDATE_PLAY:I


# instance fields
.field private mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;Landroid/os/Looper;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 206
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 208
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;

    .line 213
    .local v0, "equalizer":Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 215
    :pswitch_0
    if-eqz v0, :cond_0

    .line 216
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->access$000(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;)V

    goto :goto_0

    .line 220
    :pswitch_1
    if-eqz v0, :cond_0

    .line 221
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;->access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView;)V

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method release()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method updatePause(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 244
    const/4 v0, 0x1

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 245
    return-void
.end method

.method updatePauseState()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->removeMessages(I)V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->sendEmptyMessage(I)Z

    .line 237
    return-void
.end method

.method updatePlay(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 241
    return-void
.end method

.method updatePlayState()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->removeMessages(I)V

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/EqualizerAnimationView$BackgroundUpdateHandler;->sendEmptyMessage(I)Z

    .line 232
    return-void
.end method
