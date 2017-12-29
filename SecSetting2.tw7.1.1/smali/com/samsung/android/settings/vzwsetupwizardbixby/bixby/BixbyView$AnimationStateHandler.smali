.class public Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;
.super Landroid/os/Handler;
.source "BixbyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "AnimationStateHandler"
.end annotation


# instance fields
.field private final mBixbyView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V
    .locals 1
    .param p1, "bixbyView"    # Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    .prologue
    .line 228
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 229
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->mBixbyView:Ljava/lang/ref/WeakReference;

    .line 228
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 235
    iget-object v2, p0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->mBixbyView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;

    .line 237
    .local v0, "bixbyView":Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;
    if-nez v0, :cond_0

    .line 238
    return-void

    .line 241
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-set1(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;I)I

    .line 243
    const-string/jumbo v2, "Settings -> BixbyView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurrentMessageInProcess in Handler -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 233
    :cond_1
    :goto_0
    return-void

    .line 246
    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->suppressAnimation()V

    .line 247
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->startListening(I)V

    goto :goto_0

    .line 250
    :pswitch_1
    sget-object v2, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;->STARTED:Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-set0(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimStates;

    .line 251
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap5(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    goto :goto_0

    .line 257
    :pswitch_3
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap6(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)V

    .line 259
    const-wide/16 v2, 0x190

    const/4 v4, 0x4

    invoke-virtual {p0, v4, v2, v3}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView$AnimationStateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 262
    :pswitch_4
    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->onEndWaveAnimation()V

    goto :goto_0

    .line 265
    :pswitch_5
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->startUserSayingAnimation()V

    .line 266
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 267
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->startListening()V

    goto :goto_0

    .line 271
    :pswitch_6
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/ParticleViewLayout;->stopUserSayingAnimation()V

    .line 272
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 273
    invoke-static {v0}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-get3(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;)Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/hq/VoiceCommandHelper;->stopListening()V

    goto :goto_0

    .line 277
    :pswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 278
    .local v1, "screenDirection":I
    invoke-static {v0, v1}, Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;->-wrap2(Lcom/samsung/android/settings/vzwsetupwizardbixby/bixby/BixbyView;I)V

    goto :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
