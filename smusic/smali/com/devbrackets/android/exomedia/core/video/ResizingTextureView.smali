.class public Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;
.super Landroid/view/TextureView;
.source "ResizingTextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;,
        Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;,
        Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;
    }
.end annotation


# static fields
.field private static final GL_CLEAR_CONFIG_ATTRIBUTES:[I

.field private static final GL_CLEAR_CONTEXT_ATTRIBUTES:[I


# instance fields
.field protected attachedListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected globalLayoutMatrixListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected lastNotifiedSize:Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected matrixManager:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected measureBasedOnAspectRatio:Z

.field protected onSizeChangeListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected requestedConfigurationRotation:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x167L
    .end annotation
.end field

.field protected requestedUserRotation:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
        to = 0x167L
    .end annotation
.end field

.field protected videoSize:Landroid/graphics/Point;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->GL_CLEAR_CONFIG_ATTRIBUTES:[I

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->GL_CLEAR_CONTEXT_ATTRIBUTES:[I

    return-void

    .line 67
    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3040
        0x4
        0x3038
        0x0
        0x3038
    .end array-data

    .line 84
    :array_1
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 96
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->lastNotifiedSize:Landroid/graphics/Point;

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    .line 101
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->matrixManager:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 104
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->attachedListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    .line 106
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    .line 108
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 111
    iput v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedUserRotation:I

    .line 113
    iput v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedConfigurationRotation:I

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->lastNotifiedSize:Landroid/graphics/Point;

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    .line 101
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->matrixManager:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 104
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->attachedListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    .line 106
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    .line 108
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 111
    iput v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedUserRotation:I

    .line 113
    iput v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedConfigurationRotation:I

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->lastNotifiedSize:Landroid/graphics/Point;

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    .line 101
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->matrixManager:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 104
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->attachedListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    .line 106
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    .line 108
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 111
    iput v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedUserRotation:I

    .line 113
    iput v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedConfigurationRotation:I

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 96
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->lastNotifiedSize:Landroid/graphics/Point;

    .line 98
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    .line 101
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-direct {v0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;-><init>()V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->matrixManager:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    .line 104
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->attachedListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    .line 106
    new-instance v0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-direct {v0, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;-><init>(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$1;)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    .line 108
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 111
    iput v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedUserRotation:I

    .line 113
    iput v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedConfigurationRotation:I

    .line 133
    return-void
.end method


# virtual methods
.method public clearSurface()V
    .locals 11

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-nez v2, :cond_0

    .line 248
    :goto_0
    return-void

    .line 229
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 230
    .local v0, "gl10":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 231
    .local v1, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 233
    const/4 v2, 0x1

    new-array v3, v2, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 234
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->GL_CLEAR_CONFIG_ATTRIBUTES:[I

    array-length v4, v3

    const/4 v5, 0x1

    new-array v5, v5, [I

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 235
    const/4 v2, 0x0

    aget-object v2, v3, v2

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v5, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->GL_CLEAR_CONTEXT_ATTRIBUTES:[I

    invoke-interface {v0, v1, v2, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    .line 236
    .local v6, "context":Ljavax/microedition/khronos/egl/EGLContext;
    const/4 v2, 0x0

    aget-object v2, v3, v2

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v9, 0x0

    const/16 v10, 0x3038

    aput v10, v5, v9

    invoke-interface {v0, v1, v2, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v8

    .line 238
    .local v8, "eglSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-interface {v0, v1, v8, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 239
    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 240
    invoke-interface {v0, v1, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 241
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 242
    invoke-interface {v0, v1, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 244
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    .end local v0    # "gl10":Ljavax/microedition/khronos/egl/EGL10;
    .end local v1    # "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    .end local v3    # "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v6    # "context":Ljavax/microedition/khronos/egl/EGLContext;
    .end local v8    # "eglSurface":Ljavax/microedition/khronos/egl/EGLSurface;
    :catch_0
    move-exception v7

    .line 246
    .local v7, "e":Ljava/lang/Exception;
    const-string v2, "ResizingTextureView"

    const-string v4, "Error clearing surface"

    invoke-static {v2, v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getScaleType()Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->matrixManager:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->getCurrentScaleType()Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;

    move-result-object v0

    return-object v0
.end method

.method protected notifyOnSizeChangeListener(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 361
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->lastNotifiedSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->lastNotifiedSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-ne v0, p2, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->lastNotifiedSize:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 366
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->lastNotifiedSize:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 368
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->onSizeChangeListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->onSizeChangeListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;->onVideoSurfaceSizeChange(II)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->updateMatrixOnLayout()V

    .line 206
    invoke-super {p0, p1}, Landroid/view/TextureView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 207
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 137
    iget-boolean v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->measureBasedOnAspectRatio:Z

    if-nez v6, :cond_0

    .line 138
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    .line 139
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->notifyOnSizeChangeListener(II)V

    .line 201
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    invoke-static {v6, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getDefaultSize(II)I

    move-result v3

    .line 144
    .local v3, "width":I
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6, p2}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getDefaultSize(II)I

    move-result v0

    .line 146
    .local v0, "height":I
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-gtz v6, :cond_2

    .line 147
    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->setMeasuredDimension(II)V

    .line 148
    invoke-virtual {p0, v3, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->notifyOnSizeChangeListener(II)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 153
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 154
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 155
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 157
    .local v2, "heightSpecSize":I
    if-ne v4, v7, :cond_5

    if-ne v1, v7, :cond_5

    .line 158
    move v3, v5

    .line 159
    move v0, v2

    .line 162
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v3

    if-ge v6, v7, :cond_4

    .line 163
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int v3, v6, v7

    .line 199
    :cond_3
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->setMeasuredDimension(II)V

    .line 200
    invoke-virtual {p0, v3, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->notifyOnSizeChangeListener(II)V

    goto :goto_0

    .line 164
    :cond_4
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v7, v3

    if-le v6, v7, :cond_3

    .line 165
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int v0, v6, v7

    goto :goto_1

    .line 167
    :cond_5
    if-ne v4, v7, :cond_6

    .line 169
    move v3, v5

    .line 170
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int v0, v6, v7

    .line 171
    if-ne v1, v8, :cond_3

    if-le v0, v2, :cond_3

    .line 173
    move v0, v2

    goto :goto_1

    .line 175
    :cond_6
    if-ne v1, v7, :cond_7

    .line 177
    move v0, v2

    .line 178
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int v3, v6, v7

    .line 179
    if-ne v4, v8, :cond_3

    if-le v3, v5, :cond_3

    .line 181
    move v3, v5

    goto :goto_1

    .line 185
    :cond_7
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v3, v6, Landroid/graphics/Point;->x:I

    .line 186
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v0, v6, Landroid/graphics/Point;->y:I

    .line 187
    if-ne v1, v8, :cond_8

    if-le v0, v2, :cond_8

    .line 189
    move v0, v2

    .line 190
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v0

    iget-object v7, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int v3, v6, v7

    .line 192
    :cond_8
    if-ne v4, v8, :cond_3

    if-le v3, v5, :cond_3

    .line 194
    move v3, v5

    .line 195
    iget-object v6, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int v0, v6, v7

    goto :goto_1
.end method

.method public setMeasureBasedOnAspectRatioEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->measureBasedOnAspectRatio:Z

    .line 308
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestLayout()V

    .line 309
    return-void
.end method

.method public setOnSizeChangeListener(Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 215
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->onSizeChangeListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$OnSizeChangeListener;

    .line 216
    return-void
.end method

.method public setScaleType(Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 287
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->matrixManager:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v0, p0, p1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->scale(Landroid/view/TextureView;Lcom/devbrackets/android/exomedia/core/video/scale/ScaleType;)Z

    .line 288
    return-void
.end method

.method public setVideoRotation(II)V
    .locals 2
    .param p1, "userRotation"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
    .param p2, "configurationRotation"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param

    .prologue
    .line 329
    iput p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedUserRotation:I

    .line 330
    iput p2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedConfigurationRotation:I

    .line 332
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->matrixManager:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    add-int v1, p1, p2

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, p0, v1}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->rotate(Landroid/view/TextureView;I)V

    .line 333
    return-void
.end method

.method public setVideoRotation(IZ)V
    .locals 1
    .param p1, "rotation"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x167L
        .end annotation
    .end param
    .param p2, "fromUser"    # Z

    .prologue
    .line 318
    if-eqz p2, :cond_0

    move v0, p1

    :goto_0
    if-nez p2, :cond_1

    .end local p1    # "rotation":I
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->setVideoRotation(II)V

    .line 319
    return-void

    .line 318
    .restart local p1    # "rotation":I
    :cond_0
    iget v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedUserRotation:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->requestedConfigurationRotation:I

    goto :goto_1
.end method

.method protected updateMatrixOnLayout()V
    .locals 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 344
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->attachedListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$AttachedListener;

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListenerLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    return-void

    .line 347
    :cond_0
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->globalLayoutMatrixListener:Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView$GlobalLayoutMatrixListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method protected updateVideoSize(II)Z
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->matrixManager:Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;

    invoke-virtual {v2, p1, p2}, Lcom/devbrackets/android/exomedia/core/video/scale/MatrixManager;->setIntrinsicVideoSize(II)V

    .line 260
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->updateMatrixOnLayout()V

    .line 262
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iput p1, v2, Landroid/graphics/Point;->x:I

    .line 263
    iget-object v2, p0, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->videoSize:Landroid/graphics/Point;

    iput p2, v2, Landroid/graphics/Point;->y:I

    .line 265
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v1

    .line 269
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_2

    .line 270
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/core/video/ResizingTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 271
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 278
    .end local v0    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
