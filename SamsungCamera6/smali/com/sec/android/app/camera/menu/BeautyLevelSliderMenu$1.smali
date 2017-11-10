.class Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;
.super Ljava/lang/Object;
.source "BeautyLevelSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->access$100(Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;)I

    move-result v0

    const/16 v1, 0x71

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBackBeautyLevel(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->restartSliderMenuTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->access$200(Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;)Lcom/samsung/android/glview/GLText;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0a0120

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setBeautyLevel(I)V

    goto/16 :goto_0
.end method
