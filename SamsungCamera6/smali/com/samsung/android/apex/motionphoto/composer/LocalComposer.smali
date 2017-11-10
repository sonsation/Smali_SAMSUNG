.class Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.source "LocalComposer.java"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;
.implements Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isRecorderConnect:Z

.field private mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-local"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isRecorderConnect:Z

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "composer created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "connect[%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ignore after release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->INITIAL:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    new-instance v1, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    invoke-direct {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;-><init>()V

    new-instance v2, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-direct {v2, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;)V

    iput-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->getToken()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v2, p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->setInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v2, p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->setErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "request eventHandler should be set(ex: SimplRequestHandler)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isRecorderConnect:Z

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    const/16 v3, 0x2716

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    invoke-interface {v2, v3, v4, v5, v1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;->onInfo(IIILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disconnect[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore after release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->release()V

    iput-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isRecorderConnect:Z

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    const/16 v1, 0x2717

    iget v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    invoke-interface {v0, v1, v4, v2, v5}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;->onInfo(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getSurface[%s]"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v5}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ignore after release"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->getSurface()Landroid/view/Surface;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isRecorderConnect:Z

    return v0
.end method

.method public onError(IIILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onerror: %d, %d, %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    check-cast p4, Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRecordingCancel(Ljava/util/HashMap;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRecordingProxyDead(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onApexServerDead(Ljava/lang/String;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x270e -> :sswitch_0
        -0x2700 -> :sswitch_1
    .end sparse-switch
.end method

.method public onInfo(IIILjava/lang/Object;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oninfo: %d, %d, %d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    check-cast p4, Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRecordingComplete(Ljava/util/HashMap;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;->onInfo(IIILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->release()V

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    :cond_0
    return-void
.end method

.method public requestId()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRequestId()J

    move-result-wide v0

    return-wide v0
.end method

.method public setCallbackListener(Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setCallbackListener[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already eventHandler is set, this should be called before connect or need disconnect"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    return-void
.end method

.method public setStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setStoreData[%s]: data=%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore after release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {v1, p1}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStorePath(JLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setStorePath[%s]: id=%d, path=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object p3, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore after release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    new-instance v2, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    iget v3, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    invoke-direct {v2, p1, p2, v3, p3}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>(JILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start[%s]: %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore after release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->start(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "stop[%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore after release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->stop()V

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public store()J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v6, "store[%s]"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v8}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ignore after release"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    :goto_0
    return-wide v2

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v7, v1, v6

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRequestId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->store(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-wide v2, v4

    goto :goto_0
.end method

.method public store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v6, "store[%s]: data=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v8}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v6, "ignore after release"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    :goto_0
    return-wide v2

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v7, v1, v6

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRequestId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->setId(J)V

    iget v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    invoke-virtual {p1, v1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->setToken(I)V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mRecorder:Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-virtual {v1, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-wide v2, v4

    goto :goto_0
.end method
