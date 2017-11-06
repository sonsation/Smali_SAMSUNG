.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;
.super Ljava/lang/Object;
.source "GLDebug.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugSurfaceFormat(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 14
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 36
    const/4 v7, 0x6

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    .line 38
    .local v0, "attr":[I
    const/4 v7, 0x6

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "EGL_DEPTH_SIZE"

    aput-object v7, v4, v10

    const-string v7, "EGL_STENCIL_SIZE"

    aput-object v7, v4, v11

    const-string v7, "EGL_ALPHA_SIZE"

    aput-object v7, v4, v9

    const-string v7, "EGL_RED_SIZE"

    aput-object v7, v4, v13

    const-string v7, "EGL_GREEN_SIZE"

    aput-object v7, v4, v12

    const/4 v7, 0x5

    const-string v8, "EGL_BLUE_SIZE"

    aput-object v8, v4, v7

    .line 41
    .local v4, "names":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v3, "msg":Ljava/lang/StringBuilder;
    invoke-static {p1, v3, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;->getConfigAttributes(Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V

    .line 43
    new-array v1, v9, [I

    fill-array-data v1, :array_1

    .line 44
    .local v1, "attr1":[I
    new-array v5, v9, [Ljava/lang/String;

    const-string v7, "GLES20.GL_MAX_TEXTURE_IMAGE_UNITS"

    aput-object v7, v5, v10

    const-string v7, "GLES20.GL_MAX_TEXTURE_SIZE"

    aput-object v7, v5, v11

    .line 46
    .local v5, "names1":[Ljava/lang/String;
    invoke-static {p1, v3, v1, v5}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;->getIntegerValues(Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V

    .line 47
    new-array v2, v12, [I

    fill-array-data v2, :array_2

    .line 49
    .local v2, "attr2":[I
    new-array v6, v12, [Ljava/lang/String;

    const-string v7, "GL_VENDOR"

    aput-object v7, v6, v10

    const-string v7, "GL_EXTENSIONS"

    aput-object v7, v6, v11

    const-string v7, "GL_RENDERER"

    aput-object v7, v6, v9

    const-string v7, "GL_VERSION"

    aput-object v7, v6, v13

    .line 51
    .local v6, "names2":[Ljava/lang/String;
    invoke-static {p0, v3, v2, v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;->getStringValues(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V

    .line 53
    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/glwidget/utils/GLDebug;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        0x3025
        0x3026
        0x3021
        0x3024
        0x3023
        0x3022
    .end array-data

    .line 43
    :array_1
    .array-data 4
        0x8872
        0xd33
    .end array-data

    .line 47
    :array_2
    .array-data 4
        0x1f00
        0x1f03
        0x1f01
        0x1f02
    .end array-data
.end method

.method public static getConfigAttributes(Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V
    .locals 5
    .param p0, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p1, "msg"    # Ljava/lang/StringBuilder;
    .param p2, "attr"    # [I
    .param p3, "name"    # [Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 59
    .local v1, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 61
    .local v0, "disp":Ljavax/microedition/khronos/egl/EGLDisplay;
    const/4 v4, 0x1

    new-array v3, v4, [I

    .line 62
    .local v3, "value":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_0

    .line 63
    aget v4, p2, v2

    invoke-interface {v1, v0, p0, v4, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 64
    aget-object v4, p3, v2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v4, ": "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-void
.end method

.method public static getIntegerValues(Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V
    .locals 4
    .param p0, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p1, "msg"    # Ljava/lang/StringBuilder;
    .param p2, "attr"    # [I
    .param p3, "name"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 73
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 74
    .local v1, "value":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 75
    aget v2, p2, v0

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 76
    aget-object v2, p3, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    aget v2, v1, v3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void
.end method

.method public static getStringValues(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/StringBuilder;[I[Ljava/lang/String;)V
    .locals 2
    .param p0, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p1, "msg"    # Ljava/lang/StringBuilder;
    .param p2, "attr"    # [I
    .param p3, "name"    # [Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 85
    aget-object v1, p3, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    aget v1, p2, v0

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method
