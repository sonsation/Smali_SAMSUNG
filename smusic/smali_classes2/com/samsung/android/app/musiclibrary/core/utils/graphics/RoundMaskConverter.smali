.class public final Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;
.super Ljava/lang/Object;
.source "RoundMaskConverter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;


# instance fields
.field private mBitmapMask:Landroid/graphics/Bitmap;

.field private mBufferBitmap:Landroid/graphics/Bitmap;

.field private mBufferCanvas:Landroid/graphics/Canvas;

.field private mBufferPaint:Landroid/graphics/Paint;

.field private final mMaskResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private final mSizeResId:I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "maskResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2, "sizeResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferCanvas:Landroid/graphics/Canvas;

    .line 30
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mMaskResId:I

    .line 31
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mSizeResId:I

    .line 32
    return-void
.end method

.method private applyRoundMaskToFitBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mSizeResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 45
    .local v0, "bitmapSize":I
    const/4 v4, 0x1

    invoke-static {p2, v0, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 46
    .local v3, "result":Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->convertToARGB8(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 49
    :cond_0
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 51
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 52
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBitmapMask:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mMaskResId:I

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBitmapMask:Landroid/graphics/Bitmap;

    .line 55
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4, v6, v6, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 56
    return-object v3
.end method

.method private convertToARGB8(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x4

    .line 61
    .local v0, "necessaryBufferSize":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 63
    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    return-object v1

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->mBufferPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;->applyRoundMaskToFitBackground(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
