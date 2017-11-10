.class Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.source "RemoteComposer.java"

# interfaces
.implements Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;
    }
.end annotation


# static fields
.field private static final CMD_GET_SURFACE:I = 0x8

.field private static final CMD_START:I = 0x3

.field private static final CMD_STOP:I = 0x5

.field private static final CMD_STORE:I = 0x4

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isRecorderConnect:Z

.field private mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-remote"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;-><init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)V

    iput-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote-composer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isRecorderConnect:Z

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->init(Landroid/content/Context;Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager$OnConnectionListener;)V

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v1, "connect"

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v0}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->connect()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    iget v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isRecorderConnect:Z

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    const/16 v1, 0x2716

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;->onInfo(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v2, "disconnect"

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isRecorderConnect:Z

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    iput-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->unbind()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getStateLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "[%s]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v8, 0x8

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getSurface[%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v7}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;

    invoke-direct {v1}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;-><init>()V

    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$2;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v2

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->awaitResponse(I)Lcom/samsung/android/apex/motionphoto/command/Result;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/command/Result;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "surface"

    invoke-virtual {v0, v2}, Lcom/samsung/android/apex/motionphoto/command/Result;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method handleError(IILandroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->handleError(IILandroid/os/Bundle;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    iget v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;->onError(IIILjava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "apexserver(native deamon) is dead, should reconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->release()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApexService(java service) is dead, should reconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->release()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2701
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->handleMessage(Landroid/os/Message;)V

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessgae : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "already released"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-array v5, v10, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v5, v8

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v5, v9

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v6, v5}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->start(Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    const/16 v6, 0x2718

    invoke-interface {v5, v6, v8, v8, v11}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;->onInfo(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cannot handle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;

    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>()V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->store(Landroid/os/Bundle;)J

    move-result-wide v2

    new-instance v5, Lcom/samsung/android/apex/motionphoto/command/Result;

    const-string v6, "id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/apex/motionphoto/command/Result;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->respond(Lcom/samsung/android/apex/motionphoto/command/Result;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cannot handle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/samsung/android/apex/motionphoto/command/Result;

    const-string v6, "id"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/apex/motionphoto/command/Result;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->respond(Lcom/samsung/android/apex/motionphoto/command/Result;)V

    goto/16 :goto_0

    :pswitch_3
    new-array v5, v10, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v5, v8

    sget-object v6, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v6, v5, v9

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->checkState([Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v5}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->getSurface()Landroid/view/Surface;

    move-result-object v4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;

    new-instance v5, Lcom/samsung/android/apex/motionphoto/command/Result;

    const-string v6, "surface"

    invoke-direct {v5, v6, v4}, Lcom/samsung/android/apex/motionphoto/command/Result;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->respond(Lcom/samsung/android/apex/motionphoto/command/Result;)V

    goto/16 :goto_0

    :pswitch_4
    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v5}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->stop()V

    sget-object v5, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v5}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;

    const/16 v6, 0x2719

    invoke-interface {v5, v6, v8, v8, v11}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnInfoListener;->onInfo(IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Cannot handle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isRecorderConnect:Z

    return v0
.end method

.method public onServiceConnected(Lcom/samsung/android/apex/service/IApexService;)V
    .locals 4

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v2, "service is connect successfully"

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "but composer is released, try unbind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->unbind()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    invoke-interface {p1, v1}, Lcom/samsung/android/apex/service/IApexService;->getMotionPhotoComposer(Lcom/samsung/android/apex/service/IMotionPhotoComposerListener;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->connect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "recorder is null, try release"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->release()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v1, "service is disconnect successfully"

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public release()V
    .locals 3

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->TAG:Ljava/lang/String;

    const-string v2, "release"

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-interface {v1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->stop()V

    sget-object v1, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->changeState(Lcom/samsung/android/apex/motionphoto/composer/State;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerListener:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$ComposerListener;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCallbackListener(Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;)V
    .locals 0

    return-void
.end method

.method public setStoreData(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore after release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemApexStoreData[%s]: data=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->setStoreData(Landroid/os/Bundle;)V

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

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setStorePath[%s]: id=%d, path=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

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

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ignore after release"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    new-array v1, v7, [Lcom/samsung/android/apex/motionphoto/composer/State;

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v2, v1, v5

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt([Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    iget v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>(JILjava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mRecorder:Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->setStoreData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "can not handle"

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public start(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->removeCommand(Lcom/samsung/android/apex/motionphoto/composer/State;I)V

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$2;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "can not handle"

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore after release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->CONNECTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "already started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->STOPPED:Lcom/samsung/android/apex/motionphoto/composer/State;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->removeCommand(Lcom/samsung/android/apex/motionphoto/composer/State;I)V

    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$2;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v1}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "can not handle"

    invoke-virtual {p0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore after release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public store()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "store[%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v4}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J

    move-result-wide v0

    return-wide v0
.end method

.method public store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-wide/16 v4, -0x1

    const/4 v10, 0x3

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v3

    const-string v6, "store[%s]: %s"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v8, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v8}, Lcom/samsung/android/apex/motionphoto/composer/State;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_0
    aput-object v2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->RELEASED:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {p0, v2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->isStateAt(Lcom/samsung/android/apex/motionphoto/composer/State;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v2, v4

    :goto_1
    return-wide v2

    :cond_0
    const-string v2, "null"

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;

    invoke-direct {v1}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;-><init>()V

    :goto_2
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$2;->$SwitchMap$com$samsung$android$apex$motionphoto$composer$State:[I

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mState:Lcom/samsung/android/apex/motionphoto/composer/State;

    invoke-virtual {v3}, Lcom/samsung/android/apex/motionphoto/composer/State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "can not handle"

    invoke-virtual {p0, v3}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getStateLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;

    invoke-direct {v1, p1}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_0
    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    :goto_4
    invoke-virtual {v1, v10}, Lcom/samsung/android/apex/motionphoto/command/Result$Synchronizer;->awaitResponse(I)Lcom/samsung/android/apex/motionphoto/command/Result;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/command/Result;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/samsung/android/apex/motionphoto/command/Result;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-object v2, Lcom/samsung/android/apex/motionphoto/composer/State;->STARTED:Lcom/samsung/android/apex/motionphoto/composer/State;

    iget-object v3, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mComposerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->queueCommand(Lcom/samsung/android/apex/motionphoto/composer/State;Landroid/os/Message;)V

    goto :goto_3

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "for 3s, store is not finished"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
