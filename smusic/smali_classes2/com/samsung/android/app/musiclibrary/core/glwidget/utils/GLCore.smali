.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;
.super Ljava/lang/Object;
.source "GLCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
    }
.end annotation


# static fields
.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSAA_4:Z = true


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mGl:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 187
    new-array v5, v4, [I

    .line 188
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 189
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->getConfig()[I

    move-result-object v2

    .line 190
    .local v2, "configSpec":[I
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 192
    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 194
    aget-object v0, v3, v6

    .line 196
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 182
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 183
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 182
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method private failRuntimeException(Ljava/lang/String;)V
    .locals 6
    .param p1, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, -0x1

    .line 220
    .local v0, "code":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 223
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;

    const-string v2, "%s code: %d msg: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private getConfig()[I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 200
    const/16 v4, 0xf

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 207
    .local v0, "config":[I
    array-length v4, v0

    add-int/lit8 v4, v4, 0x2

    new-array v1, v4, [I

    .line 208
    .local v1, "newConfig":[I
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .line 210
    .local v2, "pos":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .local v3, "pos":I
    const/16 v4, 0x3031

    aput v4, v1, v2

    .line 211
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "pos":I
    .restart local v2    # "pos":I
    const/4 v4, 0x4

    aput v4, v1, v3

    .line 212
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "pos":I
    .restart local v3    # "pos":I
    const/16 v4, 0x3038

    aput v4, v1, v2

    .line 213
    move-object v0, v1

    .line 215
    return-object v0

    .line 200
    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x10
        0x3026
        0x0
        0x3038
    .end array-data
.end method


# virtual methods
.method public checkGLCurrent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-nez v0, :cond_2

    .line 94
    :cond_0
    const-string v0, "invalid egl/eglContext/eglSurface"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    .line 97
    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_3
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "switching GLContext back to ours"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    const-string v0, "eglMakeCurrent failed"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_4
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "switching GLContext back succeeded"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Landroid/graphics/SurfaceTexture;)V
    .locals 6
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 60
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v1, v2, :cond_0

    .line 62
    const-string v1, "eglGetDisplay failed"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    .line 65
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 66
    .local v0, "version":[I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    const-string v1, "eglInitialize failed"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_2

    .line 72
    const-string v1, "eglConfig not initialized"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    .line 75
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, p1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v1, v2, :cond_4

    .line 80
    :cond_3
    const-string v1, "createWindowSurface failed"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    .line 83
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v3, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 84
    const-string v1, "eglMakeCurrent failed"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->failRuntimeException(Ljava/lang/String;)V

    .line 87
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-virtual {v1}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    .line 89
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initGL end obj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onDrawFrame(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->checkGLCurrent()V

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v0}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 168
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Landroid/opengl/GLSurfaceView$Renderer;II)V
    .locals 2
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 119
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 120
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->swapBuffers()V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {p1, v0, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 124
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 7
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v2, :cond_2

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 142
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_1

    .line 146
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglDestroySurface mEglSurface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mEglDisplay:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-result v1

    .line 150
    .local v1, "result":Z
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglDestroySurface result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v1    # "result":Z
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 153
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 154
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 155
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_2
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleTextureDestroyed"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSurfaceSizeChanged(Landroid/opengl/GLSurfaceView$Renderer;II)V
    .locals 2
    .param p1, "renderer"    # Landroid/opengl/GLSurfaceView$Renderer;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 129
    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 130
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 131
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->swapBuffers()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mGl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {p1, v0, p2, p3}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 135
    return-void
.end method

.method public swapBuffers()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore$GLException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->checkGLCurrent()V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLCore;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 113
    :cond_0
    return-void
.end method
