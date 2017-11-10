.class Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;
.super Ljava/lang/Object;
.source "TouchEVSliderGroup.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/TouchEVSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    iget-object v0, v0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->mTouchEVSliderChangeListener:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-static {v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->access$000(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$TouchEVSliderChangeListener;->onTouchEVSliderChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->access$100(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->access$100(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->access$100(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->access$100(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-static {v2}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->access$200(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/gl/TouchEVSlider;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a0080

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-static {v0}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->access$100(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getTts()Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    const-string v1, "%.1f"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup$1;->this$0:Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;

    invoke-static {v3}, Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;->access$000(Lcom/sec/android/app/camera/widget/gl/TouchEVSliderGroup;)I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :cond_0
    return-void
.end method
