.class public Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;
.super Landroid/os/Handler;
.source "HeadsetHookClickHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;
    }
.end annotation


# static fields
.field private static final HEADSET_HOOK_CLICK_INTERVAL:I = 0x12c


# instance fields
.field private mHeadsetHookClickCount:I

.field private mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    return-void
.end method


# virtual methods
.method public getClickCount()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    const-string v0, "SMUSIC-SV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HeadsetHookClickHandler - click count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;->onDoubleClicked()V

    .line 63
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    .line 64
    return-void

    .line 57
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;->onTripleClicked()V

    goto :goto_0
.end method

.method public increaseCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    .line 41
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->removeMessages(I)V

    .line 42
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mHeadsetHookClickCount:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 43
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setMultipleKeyClickListener(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler;->mOnMultipleKeyListener:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/HeadsetHookClickHandler$OnMultipleKeyClickListener;

    .line 29
    return-void
.end method
