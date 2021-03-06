.class public Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;
.super Landroid/view/View;
.source "FlowerView.java"

# interfaces
.implements Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;


# static fields
.field private static MAX_POOL_SIZE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFlowerImageId:[I

.field private mFlowerPool:[Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;

.field private mFlowerSizeScale:[F

.field private mPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x23

    sput v0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->MAX_POOL_SIZE:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mPaint:Landroid/graphics/Paint;

    .line 37
    iput-boolean v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->refresh:Z

    .line 39
    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 40
    sget v2, Lcom/android/keyguard/R$drawable;->flower_01:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/keyguard/R$drawable;->flower_02:I

    aput v2, v1, v4

    .line 41
    sget v2, Lcom/android/keyguard/R$drawable;->flower_03:I

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 39
    iput-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mFlowerImageId:[I

    .line 44
    const/4 v1, 0x6

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mFlowerSizeScale:[F

    .line 48
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->matrix:Landroid/graphics/Matrix;

    .line 53
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mContext:Landroid/content/Context;

    .line 54
    sget v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->MAX_POOL_SIZE:I

    new-array v1, v1, [Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mFlowerPool:[Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;

    .line 56
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mFlowerPool:[Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mFlowerPool:[Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;

    new-instance v2, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;

    invoke-direct {v2, p1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void

    .line 44
    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 64
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->refresh:Z

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->invalidate()V

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mFlowerPool:[Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;

    const/4 v2, 0x0

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v4, v3

    .line 70
    .local v1, "flower":Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->matrix:Landroid/graphics/Matrix;

    iget v6, v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->rotate:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 71
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mFlowerSizeScale:[F

    iget v7, v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->flowerSize:I

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mFlowerSizeScale:[F

    iget v8, v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->flowerSize:I

    aget v7, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 72
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mFlowerImageId:[I

    iget v7, v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->flowerKind:I

    aget v6, v6, v7

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mContext:Landroid/content/Context;

    iget v7, v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cx:F

    invoke-static {v6, v7}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mContext:Landroid/content/Context;

    iget v8, v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->cy:F

    invoke-static {v7, v8}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 74
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 75
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;->next()V

    .line 69
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 62
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "flower":Lcom/android/keyguard/wallpaper/theme/xmlparser/Flower;
    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->refresh:Z

    .line 80
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->refresh:Z

    .line 87
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;->invalidate()V

    .line 85
    return-void
.end method
