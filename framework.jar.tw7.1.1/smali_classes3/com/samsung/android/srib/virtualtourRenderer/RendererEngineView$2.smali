.class Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$2;
.super Ljava/lang/Object;
.source "RendererEngineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setCurrentRenderer(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

.field final synthetic val$oLastRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;


# direct methods
.method constructor <init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$2;->this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    iput-object p2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$2;->val$oLastRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$2;->val$oLastRenderer:Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;

    invoke-interface {v1, v0}, Lcom/samsung/android/srib/virtualtourRenderer/MultiRenderer;->onLoseCurrent(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
