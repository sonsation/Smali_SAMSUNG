.class Lcom/sec/android/app/camera/menu/BeautyListMenu$2;
.super Ljava/lang/Object;
.source "BeautyListMenu.java"

# interfaces
.implements Lcom/samsung/android/glview/GLSlider$SliderChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/BeautyListMenu;->initBeautySliderMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$200(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v0}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$300(Lcom/sec/android/app/camera/menu/BeautyListMenu;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getGLContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    iget-object v0, v0, Lcom/sec/android/app/camera/menu/BeautyListMenu;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/menu/BeautyListMenu$2;->this$0:Lcom/sec/android/app/camera/menu/BeautyListMenu;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/menu/BeautyListMenu;->access$400(Lcom/sec/android/app/camera/menu/BeautyListMenu;I)V

    :cond_0
    return-void
.end method
