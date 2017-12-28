.class public Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FastBitmapDrawable.java"


# static fields
.field private static final GHOST_MODE_MIN_COLOR_RANGE:I = 0x82

.field private static final MODE_FIT:I = 0x0

.field private static final MODE_MATRIX:I = 0x1

.field private static final sCachedBrightnessFilter:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static sGhostModeMatrix:Landroid/graphics/ColorMatrix;

.field private static final sTempMatrix:Landroid/graphics/ColorMatrix;


# instance fields
.field private mAlpha:I

.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mBrightness:I

.field private mGhostModeEnabled:Z

.field private mHeight:I

.field private mMode:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    .line 57
    iput v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBrightness:I

    .line 58
    iput-boolean v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mGhostModeEnabled:Z

    .line 61
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mAlpha:I

    .line 62
    iput-object p1, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mMode:I

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mWidth:I

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mHeight:I

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iput v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mHeight:I

    iput v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mWidth:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mMode:I

    .line 76
    iput p2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mWidth:I

    .line 77
    iput p3, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mHeight:I

    .line 79
    :cond_0
    return-void
.end method

.method private static setBrightnessMatrix(Landroid/graphics/ColorMatrix;I)V
    .locals 5
    .param p0, "matrix"    # Landroid/graphics/ColorMatrix;
    .param p1, "brightness"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 204
    int-to-float v2, p1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    sub-float v1, v4, v2

    .line 205
    .local v1, "scale":F
    invoke-virtual {p0, v1, v1, v1, v4}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    .line 206
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 211
    .local v0, "array":[F
    const/4 v2, 0x4

    int-to-float v3, p1

    aput v3, v0, v2

    .line 212
    const/16 v2, 0x9

    int-to-float v3, p1

    aput v3, v0, v2

    .line 213
    const/16 v2, 0xe

    int-to-float v3, p1

    aput v3, v0, v2

    .line 214
    return-void
.end method

.method private updateFilter()V
    .locals 7

    .prologue
    const/16 v4, 0xff

    const/high16 v5, 0x43020000    # 130.0f

    const/4 v6, 0x0

    .line 167
    iget-boolean v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mGhostModeEnabled:Z

    if-eqz v2, :cond_2

    .line 168
    sget-object v2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    if-nez v2, :cond_0

    .line 169
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    .line 170
    sget-object v2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 173
    const v1, 0x3efafafb

    .line 174
    .local v1, "range":F
    sget-object v2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    const/4 v4, 0x3

    aput v6, v3, v4

    const/4 v4, 0x4

    aput v5, v3, v4

    const/4 v4, 0x5

    aput v6, v3, v4

    const/4 v4, 0x6

    aput v1, v3, v4

    const/4 v4, 0x7

    aput v6, v3, v4

    const/16 v4, 0x8

    aput v6, v3, v4

    const/16 v4, 0x9

    aput v5, v3, v4

    const/16 v4, 0xa

    aput v6, v3, v4

    const/16 v4, 0xb

    aput v6, v3, v4

    const/16 v4, 0xc

    aput v1, v3, v4

    const/16 v4, 0xd

    aput v6, v3, v4

    const/16 v4, 0xe

    aput v5, v3, v4

    const/16 v4, 0xf

    aput v6, v3, v4

    const/16 v4, 0x10

    aput v6, v3, v4

    const/16 v4, 0x11

    aput v6, v3, v4

    const/16 v4, 0x12

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v3, v4

    const/16 v4, 0x13

    aput v6, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 179
    sget-object v2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    sget-object v3, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    .line 182
    .end local v1    # "range":F
    :cond_0
    iget v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBrightness:I

    if-nez v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 200
    :goto_0
    return-void

    .line 185
    :cond_1
    sget-object v2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    iget v3, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBrightness:I

    invoke-static {v2, v3}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setBrightnessMatrix(Landroid/graphics/ColorMatrix;I)V

    .line 186
    sget-object v2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    sget-object v3, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sGhostModeMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2, v3}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 187
    iget-object v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v4, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sTempMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v3, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 189
    :cond_2
    iget v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBrightness:I

    if-eqz v2, :cond_4

    .line 190
    sget-object v2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBrightness:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    .line 191
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-nez v0, :cond_3

    .line 192
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    iget v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBrightness:I

    invoke-static {v2, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 194
    .restart local v0    # "filter":Landroid/graphics/ColorFilter;
    sget-object v2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->sCachedBrightnessFilter:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBrightness:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 196
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    .line 198
    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 85
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mWidth:I

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mHeight:I

    if-ne v1, v2, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 88
    .restart local v0    # "r":Landroid/graphics/Rect;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mAlpha:I

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBrightness:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mHeight:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mAlpha:I

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 107
    return-void
.end method

.method public setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 159
    iget v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBrightness:I

    if-eq v0, p1, :cond_0

    .line 160
    iput p1, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mBrightness:I

    .line 161
    invoke-direct {p0}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->updateFilter()V

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->invalidateSelf()V

    .line 164
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 96
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filterBitmap"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    return-void
.end method

.method public setGhostModeEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mGhostModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 149
    iput-boolean p1, p0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->mGhostModeEnabled:Z

    .line 150
    invoke-direct {p0}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->updateFilter()V

    .line 152
    :cond_0
    return-void
.end method
