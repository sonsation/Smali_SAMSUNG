.class Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$5;
.super Ljava/lang/Object;
.source "EffectLevelSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->refreshMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 3

    const-string v0, "EffectLevelSliderMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStepChanged[Vignette] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->restartSliderMenuTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->access$102(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;I)I

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu$5;->this$0:Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;

    invoke-static {v1}, Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;->access$100(Lcom/sec/android/app/camera/menu/EffectLevelSliderMenu;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setEffectVignetteLevel(I)V

    :cond_0
    return-void
.end method
