.class public Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;
.super Landroid/os/Handler;
.source "SemApexClientEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;,
        Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;

.field private mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;

.field private mToken:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage: what=%d, arg1=%d, arg2=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "infolistener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorlistener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mToken:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;->onInfo(IIILjava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mToken:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;->onError(IIILjava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mOnErrorListener:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mOnInfoListener:Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;

    return-void
.end method

.method public setToken(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler;->mToken:I

    return-void
.end method
