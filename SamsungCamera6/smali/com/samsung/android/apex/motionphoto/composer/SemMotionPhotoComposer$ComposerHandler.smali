.class public Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$ComposerHandler;
.super Landroid/os/Handler;
.source "SemMotionPhotoComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ComposerHandler"
.end annotation


# instance fields
.field private mComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$ComposerHandler;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$ComposerHandler;->mComposer:Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;

    invoke-virtual {v1, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
