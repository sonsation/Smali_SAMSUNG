.class Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;
.super Ljava/lang/Object;
.source "AntiFogSliderMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/menu/MenuManagerImpl;ILcom/samsung/android/glview/GLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/menu/MenuResourceDepot;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAntiFogLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->restartSliderMenuTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->access$100(Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;)Lcom/samsung/android/glview/GLText;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu$1;->this$0:Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;

    iget-object v4, v4, Lcom/sec/android/app/camera/menu/AntiFogSliderMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAntiFogLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    return-void
.end method
