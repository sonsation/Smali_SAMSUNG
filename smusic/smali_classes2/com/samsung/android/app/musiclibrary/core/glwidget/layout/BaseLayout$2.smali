.class Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;
.super Ljava/lang/Object;
.source "BaseLayout.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastFrameStart:J

.field mRealignRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->mRealignRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "notUsed"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget-boolean v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 279
    :goto_0
    return-void

    .line 274
    :cond_0
    const-string v0, "SMUSIC-GLBaseLayout"

    const-string/jumbo v1, "skipped not aligned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iput p2, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWidth:I

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iput p3, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHeight:I

    .line 244
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWidth:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHeight:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->access$002(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;Z)Z

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->access$000(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mWidth:I

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget v2, v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iput-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mParent:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->mRealignRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/GLHolder;->inAnimationThread(Ljava/lang/Runnable;)V

    .line 251
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 244
    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "notUsed"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    iput-boolean v1, v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->mAligned:Z

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->access$002(Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;Z)Z

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/layout/BaseLayout;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 232
    return-void
.end method
