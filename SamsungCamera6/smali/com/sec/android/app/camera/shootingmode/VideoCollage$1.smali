.class Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;
.super Ljava/lang/Object;
.source "VideoCollage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/VideoCollage;->onCameraSettingChanged(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/VideoCollage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    iget-object v0, v0, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/VideoCollage$1;->this$0:Lcom/sec/android/app/camera/shootingmode/VideoCollage;

    iget-object v1, v1, Lcom/sec/android/app/camera/shootingmode/VideoCollage;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resizePreviewAspectRatio(I)Z

    return-void
.end method
