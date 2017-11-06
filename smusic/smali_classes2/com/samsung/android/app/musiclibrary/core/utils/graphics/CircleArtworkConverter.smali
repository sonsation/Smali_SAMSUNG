.class public final Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;
.super Ljava/lang/Object;
.source "CircleArtworkConverter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;


# instance fields
.field private final mCircleRoundEffectInsetResId:I

.field private final mCircleSizeRedId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "circleSizeResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p2, "roundEffectInsetResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSizeRedId:I

    .line 23
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInsetResId:I

    .line 24
    return-void
.end method

.method private convertToCircle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "origin"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 33
    .local v2, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleSizeRedId:I

    .line 34
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, p0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->mCircleRoundEffectInsetResId:I

    .line 35
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v1, v3, p2, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkEffectDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;II)V

    .line 36
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 38
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 39
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {v1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 40
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 41
    return-object p2
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;->convertToCircle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
