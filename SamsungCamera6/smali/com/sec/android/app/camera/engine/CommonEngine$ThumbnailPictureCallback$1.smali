.class Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;
.super Ljava/lang/Object;
.source "CommonEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->onPictureTaken([BLcom/samsung/android/camera/core/SemCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

.field final synthetic val$intData:[I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;[I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->val$intData:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->val$intData:[I

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v4, v4, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6500(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v5, v5, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6600(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v4, v4, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$600(Lcom/sec/android/app/camera/engine/CommonEngine;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->calculateOrientationForPicture(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getSelfFlip()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6800(Lcom/sec/android/app/camera/engine/CommonEngine;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6900(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->access$6900(Lcom/sec/android/app/camera/engine/CommonEngine;)Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Lcom/sec/android/app/camera/interfaces/Engine$BurstCaptureEventListener;->onBurstCaptureThumbnailTaken(Landroid/graphics/Bitmap;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback$1;->this$1:Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine$ThumbnailPictureCallback;->this$0:Lcom/sec/android/app/camera/engine/CommonEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/engine/CommonEngine;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->updateThumbnail(Landroid/graphics/Bitmap;IZ)V

    goto :goto_1
.end method
