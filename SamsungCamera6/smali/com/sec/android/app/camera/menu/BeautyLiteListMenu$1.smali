.class Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;
.super Ljava/lang/Object;
.source "BeautyLiteListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->initBeautySliderMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$100(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$200(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu$1;->this$0:Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;->access$300(Lcom/sec/android/app/camera/menu/BeautyLiteListMenu;I)V

    :cond_0
    return-void
.end method
