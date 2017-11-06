.class public Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;
.super Ljava/lang/Object;
.source "AndroidBlurGenerator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_BLUR_RADIUS:F = 25.0f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBlurSize:I

.field private mBufferBitmap:Landroid/graphics/Bitmap;

.field private final mBufferCanvas:Landroid/graphics/Canvas;

.field private final mBufferPaint:Landroid/graphics/Paint;

.field private mRenderScript:Landroid/renderscript/RenderScript;

.field private final mRenderScriptLock:Ljava/lang/Object;

.field private mScript:Landroid/renderscript/ScriptIntrinsicBlur;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blurSize"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScriptLock:Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBlurSize:I

    .line 47
    return-void
.end method

.method private convertToARGB8(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x0

    .line 117
    const-wide/16 v0, 0x0

    .line 121
    .local v0, "base":J
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 122
    .local v2, "necessaryBufferSize":I
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v3

    if-lt v3, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 123
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 127
    :cond_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 142
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    return-object v3

    .line 132
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 136
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBufferPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v7, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private getBlurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "outputHint"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x1

    .line 54
    if-nez p1, :cond_0

    .line 55
    const/4 v3, 0x0

    .line 112
    :goto_0
    return-object v3

    .line 58
    :cond_0
    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBlurSize:I

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mBlurSize:I

    invoke-static {p1, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 60
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->convertToARGB8(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v1, v4, 0x4

    .line 72
    .local v1, "needSize":I
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v4

    if-gt v4, v1, :cond_3

    .line 73
    move-object v3, p2

    .line 80
    .local v3, "outputBitmap":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScriptLock:Ljava/lang/Object;

    monitor-enter v5

    .line 81
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    if-nez v4, :cond_4

    .line 82
    :cond_2
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p1

    goto :goto_0

    .line 75
    .end local v3    # "outputBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {p1, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .restart local v3    # "outputBitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 84
    :cond_4
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v7, 0x1

    .line 85
    invoke-static {v4, p1, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 90
    .local v0, "input":Landroid/renderscript/Allocation;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 94
    .local v2, "output":Landroid/renderscript/Allocation;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-virtual {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 98
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v4, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 102
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 106
    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 110
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 111
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 112
    monitor-exit v5

    goto :goto_0

    .line 113
    .end local v0    # "input":Landroid/renderscript/Allocation;
    .end local v2    # "output":Landroid/renderscript/Allocation;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method


# virtual methods
.method public getBlurBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->getBlurBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 146
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScriptLock:Ljava/lang/Object;

    monitor-enter v3

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 151
    .local v1, "sc":Landroid/renderscript/ScriptIntrinsicBlur;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mScript:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 152
    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {v1}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 160
    .local v0, "rsc":Landroid/renderscript/RenderScript;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/AndroidBlurGenerator;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 161
    if-eqz v0, :cond_1

    .line 162
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 167
    :cond_1
    monitor-exit v3

    .line 168
    return-void

    .line 167
    .end local v0    # "rsc":Landroid/renderscript/RenderScript;
    .end local v1    # "sc":Landroid/renderscript/ScriptIntrinsicBlur;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
