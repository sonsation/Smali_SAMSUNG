.class public Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;
.super Ljava/lang/Object;
.source "GLGalleryShader.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DEF_FOG:Ljava/lang/String; = "Fog"

.field public static final DEF_GREYSCALE:Ljava/lang/String; = "Greyscale"

.field public static final DEF_HSV_CORRECTION:Ljava/lang/String; = "HSVCorrection"

.field public static final DEF_MUTABLE_TEXTURES:Ljava/lang/String; = "MutableTextures"

.field public static final DEF_QUAD_OPACITY_MASK:Ljava/lang/String; = "QuadOpacityMask"

.field public static final DEF_RENDERING_OPACITY:Ljava/lang/String; = "RenderingOpacity"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_TEXTURES_COUNT:I = 0x20


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCoordHandler:I

.field private mDefines:[Ljava/lang/String;

.field private mFogColor:[F

.field private mFogColorHandler:I

.field private mFogFar:F

.field private mFogFarHandler:I

.field private mFogNear:F

.field private mFogNearHandler:I

.field private mHSVCorrection:I

.field private mHandler:I

.field private mHasMutableTextures:Z

.field private mLastAlpha:F

.field private mLastTextureName:I

.field private mLastTextureUnit:I

.field private mModelMatrixHandler:I

.field private mOpacityHandler:I

.field private mPVMatrixHandler:I

.field private mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

.field private mQuadOpacityMaskTextureHandler:I

.field private final mQuadTextureUnit:I

.field private mRenderingOpacity:F

.field private mRenderingOpacityHandler:I

.field private mTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

.field private mTexturesHandler:I

.field mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private mUseFog:Z

.field private mUseHSVCorrection:Z

.field private mUseQuadOpacityMask:Z

.field private mUseRenderingOpacity:Z

.field private mViewportSize:[F

.field private mViewportSizeHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defines"    # [Ljava/lang/String;

    .prologue
    const/16 v7, 0x20

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    .line 96
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    .line 104
    const/4 v1, 0x2

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSize:[F

    .line 363
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;)V

    invoke-direct {v1, v7, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;-><init>(ILcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement$Factory;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    .line 144
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mDefines:[Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mDefines:[Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 146
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mDefines:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_5

    aget-object v0, v2, v1

    .line 147
    .local v0, "s":Ljava/lang/String;
    const-string v4, "Fog"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseFog:Z

    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_1
    const-string v4, "QuadOpacityMask"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseQuadOpacityMask:Z

    goto :goto_1

    .line 151
    :cond_2
    const-string v4, "RenderingOpacity"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseRenderingOpacity:Z

    goto :goto_1

    .line 153
    :cond_3
    const-string v4, "HSVCorrection"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseHSVCorrection:Z

    goto :goto_1

    .line 155
    :cond_4
    const-string v4, "MutableTextures"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    iput-boolean v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHasMutableTextures:Z

    goto :goto_1

    .line 161
    .end local v0    # "s":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mContext:Ljava/lang/ref/WeakReference;

    .line 163
    iput v6, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    .line 165
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHasMutableTextures:Z

    invoke-direct {v1, v7, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;-><init>(IZ)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

    .line 167
    iput v5, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadTextureUnit:I

    .line 168
    return-void
.end method

.method private bindTexture(ILcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;)V
    .locals 2
    .param p1, "textureUnit"    # I
    .param p2, "texture"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    .prologue
    .line 247
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureUnit:I

    if-eq p1, v1, :cond_0

    .line 248
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureUnit:I

    .line 249
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 251
    :cond_0
    const/4 v0, 0x0

    .line 252
    .local v0, "textureName":I
    if-eqz p2, :cond_1

    .line 253
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->name()I

    move-result v0

    .line 255
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureName:I

    if-eq v0, v1, :cond_2

    .line 256
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureName:I

    .line 257
    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 259
    :cond_2
    return-void
.end method

.method private compileIfNessary()V
    .locals 5

    .prologue
    .line 262
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 263
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 264
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 265
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->LOG_TAG:Ljava/lang/String;

    const-string v4, "No context to compile shader!"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local v0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 269
    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    sget v3, Lcom/samsung/android/app/musiclibrary/R$raw;->music_core_glwidget_fog_texture_model_vertex_shader:I

    .line 270
    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->loadShader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "vertex":Ljava/lang/String;
    sget v3, Lcom/samsung/android/app/musiclibrary/R$raw;->music_core_glwidget_fog_texture_model_fragment_shader:I

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->loadShader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "fragment":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mDefines:[Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/ShaderCompiler;->compile([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->use()V

    .line 279
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string v4, "aCoord"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mCoordHandler:I

    .line 280
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uModelMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mModelMatrixHandler:I

    .line 281
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uPVMatrix"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mPVMatrixHandler:I

    .line 283
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uTexture"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTexturesHandler:I

    .line 284
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uOpacity"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mOpacityHandler:I

    .line 285
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uFogColor"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColorHandler:I

    .line 286
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uFogNear"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogNearHandler:I

    .line 287
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uFogFar"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogFarHandler:I

    .line 288
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uRenderingOpacity"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mRenderingOpacityHandler:I

    .line 290
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uViewportSize"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSizeHandler:I

    .line 291
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uQuadOpacityMaskTexture"

    .line 292
    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTextureHandler:I

    .line 293
    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    const-string/jumbo v4, "uHSVCorrection"

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHSVCorrection:I

    .line 295
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "fragment":Ljava/lang/String;
    .end local v2    # "vertex":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->use()V

    goto/16 :goto_0
.end method

.method private drawTriangleStrip(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    .line 350
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 351
    return-void
.end method

.method private resetState()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 241
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureName:I

    .line 242
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastTextureUnit:I

    .line 243
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastAlpha:F

    .line 244
    return-void
.end method

.method private setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 343
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 344
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mLastAlpha:F

    .line 345
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mOpacityHandler:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 347
    :cond_0
    return-void
.end method

.method private setHSV([F)V
    .locals 4
    .param p1, "hsv"    # [F

    .prologue
    .line 339
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHSVCorrection:I

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    .line 340
    return-void
.end method

.method private setModelMatrix([FI)V
    .locals 3
    .param p1, "matrix"    # [F
    .param p2, "offset"    # I

    .prologue
    .line 331
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mModelMatrixHandler:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, p2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 332
    return-void
.end method

.method private setPVMatrix([F)V
    .locals 3
    .param p1, "pVMatrix"    # [F

    .prologue
    const/4 v2, 0x0

    .line 335
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mPVMatrixHandler:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 336
    return-void
.end method

.method private updateTexture(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V
    .locals 4
    .param p1, "c"    # Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;

    .prologue
    .line 354
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 355
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 356
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->obtain(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    move-result-object v1

    .line 357
    .local v1, "t":Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;
    const v2, 0x84c0

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->bindTexture(ILcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;)V

    .line 361
    .end local v1    # "t":Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;
    :goto_0
    return-void

    .line 359
    :cond_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "trying to render null bitmap!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private use()V
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 300
    return-void
.end method


# virtual methods
.method public beginFrame([F)V
    .locals 4
    .param p1, "PVMatrix"    # [F

    .prologue
    const/4 v3, 0x0

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->resetState()V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->compileIfNessary()V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->bindVertexAttribArrays()V

    .line 211
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseFog:Z

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColorHandler:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 v2, 0x4

    invoke-static {v0, v3, v1, v2}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 213
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogNearHandler:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogNear:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 214
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogFarHandler:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogFar:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseRenderingOpacity:Z

    if-eqz v0, :cond_1

    .line 217
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mRenderingOpacityHandler:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mRenderingOpacity:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 219
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseQuadOpacityMask:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    if-eqz v0, :cond_2

    .line 221
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTextureHandler:I

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadTextureUnit:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 222
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSizeHandler:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSize:[F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 224
    const v0, 0x84c0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadTextureUnit:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->bindTexture(ILcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;)V

    .line 227
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTexturesHandler:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 229
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setPVMatrix([F)V

    .line 233
    return-void
.end method

.method public bindVertexAttribArrays()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 236
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mCoordHandler:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 237
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mCoordHandler:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 238
    return-void
.end method

.method public renderBitmaps([Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;I)V
    .locals 5
    .param p1, "models"    # [Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    .param p2, "primitiveLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 303
    if-nez p1, :cond_1

    .line 324
    :cond_0
    return-void

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->use()V

    .line 310
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 311
    .local v0, "c":Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 312
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getMatrix()[F

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setModelMatrix([FI)V

    .line 313
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->updateTexture(Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;)V

    .line 314
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getAlpha()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setAlpha(F)V

    .line 315
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mUseHSVCorrection:Z

    if-eqz v4, :cond_2

    .line 316
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/model/BitmapModel;->getHSVCorrection()[F

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->setHSV([F)V

    .line 318
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->drawTriangleStrip(I)V

    .line 310
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resetMutableTexturesCache()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTextures:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/TextureCache;->resetMutableCache()V

    .line 328
    return-void
.end method

.method public setFogColor(FFFF)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogColor:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 175
    return-void
.end method

.method public setFogDistance(FF)V
    .locals 0
    .param p1, "near"    # F
    .param p2, "far"    # F

    .prologue
    .line 178
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogNear:F

    .line 179
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mFogFar:F

    .line 180
    return-void
.end method

.method public setQuadOpacityMaskTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mTexturesPool:Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/Pool;->obtain()Lcom/samsung/android/app/musiclibrary/core/glwidget/pool/PoolElement;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mQuadOpacityMaskTexture:Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/Texture;->sendBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    return-void
.end method

.method public setRenderingOpacity(F)V
    .locals 0
    .param p1, "renderingOpacity"    # F

    .prologue
    .line 183
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mRenderingOpacity:F

    .line 184
    return-void
.end method

.method public setViewportSize(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSize:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/render/GLGalleryShader;->mViewportSize:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 189
    return-void
.end method
