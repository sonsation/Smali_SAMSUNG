.class Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;
.super Ljava/lang/Object;
.source "ZoomSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomValueChangeListener:Lcom/sec/android/app/camera/menu/ZoomSliderMenu$ZoomValueMenuSelectListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mZoomValueChangeListener:Lcom/sec/android/app/camera/menu/ZoomSliderMenu$ZoomValueMenuSelectListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->access$000(Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->access$100(Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)I

    move-result v1

    mul-int/2addr p1, v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$ZoomValueMenuSelectListener;->onZoomValueMenuSelect(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v1, v1, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getZoomValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->access$200(Lcom/sec/android/app/camera/menu/ZoomSliderMenu;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const v1, 0x7f0a0080

    invoke-static {v1}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/ZoomSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/ZoomSliderMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/ZoomSliderMenu;->access$300(Lcom/sec/android/app/camera/menu/ZoomSliderMenu;)Lcom/samsung/android/glview/GLText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_1
    return-void
.end method
