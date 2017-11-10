.class Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;
.super Ljava/lang/Object;
.source "RemoteComposer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;


# direct methods
.method constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, -0x2701

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMotionPhotoComposer binder died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;

    invoke-interface {v0, v3, v2, v2, v4}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$OnErrorListener;->onError(IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-virtual {v0, v3, v2, v4}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->handleError(IILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
