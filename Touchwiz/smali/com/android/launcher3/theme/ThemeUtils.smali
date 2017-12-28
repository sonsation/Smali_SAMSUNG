.class public Lcom/android/launcher3/theme/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final DEFAULT_SCALE:I = 0x46

.field public static final FOLLOWING_THEME:Z = true

.field public static final NOT_FOLLOWING_THEME:Z

.field private static mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    .line 40
    sget-object v0, Lcom/android/launcher3/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    sget-object v0, Lcom/android/launcher3/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 42
    sget-object v0, Lcom/android/launcher3/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNinepatchWithColor(Landroid/graphics/Bitmap;ILandroid/graphics/Rect;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "color"    # I
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    .line 52
    .local v0, "chunk":[B
    if-nez v0, :cond_0

    move-object v1, v2

    .line 59
    :goto_0
    return-object v1

    .line 55
    :cond_0
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v1, p0, v0, p2, v2}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 56
    .local v1, "ninePatchDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 57
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method public static integrateIconAndTray(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "IconTray"    # Landroid/graphics/Bitmap;
    .param p2, "iconWidth"    # I
    .param p3, "iconHeight"    # I

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 66
    :cond_0
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v9

    sget-object v10, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->ICON_SCALE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v10}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/launcher3/theme/OpenThemeManager;->getInteger(I)I

    move-result v6

    .line 67
    .local v6, "int_scale":I
    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    .line 68
    const/16 v6, 0x46

    .line 70
    :cond_1
    int-to-float v9, v6

    const v10, 0x3c23d70a    # 0.01f

    mul-float v5, v9, v10

    .line 71
    .local v5, "iconScale":F
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 72
    .local v7, "mPaint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 74
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 76
    invoke-static {}, Lcom/android/launcher3/util/BitmapUtils;->getIconBitmapSize()I

    move-result v4

    .line 77
    .local v4, "defaultIconSize":I
    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 79
    .local v2, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 81
    .local v1, "bitmapHeight":I
    if-eq v2, p2, :cond_2

    .line 82
    int-to-float v9, p2

    mul-float/2addr v9, v5

    int-to-float v10, v4

    div-float v8, v9, v10

    .line 83
    .local v8, "scale":F
    move v2, v4

    .line 84
    move v1, v4

    .line 88
    :goto_1
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 89
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v3, p1, v9, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 91
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 93
    int-to-float v9, p2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    int-to-float v10, p3

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v3, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    invoke-virtual {v3, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 96
    neg-int v9, v2

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    neg-int v10, v1

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-virtual {v3, p0, v9, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 97
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 86
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "scale":F
    :cond_2
    move v8, v5

    .restart local v8    # "scale":F
    goto :goto_1

    .end local v1    # "bitmapHeight":I
    .end local v2    # "bitmapWidth":I
    .end local v8    # "scale":F
    :cond_3
    move-object v0, p0

    .line 100
    goto :goto_0
.end method

.method public static resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "original"    # Landroid/graphics/Bitmap;
    .param p1, "resultSize"    # I

    .prologue
    .line 46
    const/4 v0, 0x1

    invoke-static {p0, p1, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static roundBitmap(IIIILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "color"    # I
    .param p1, "iconWidth"    # I
    .param p2, "iconHeight"    # I
    .param p3, "radius"    # I
    .param p4, "strokeDrawable"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 106
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    .local v1, "rounder":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 109
    .local v0, "canvas":Landroid/graphics/Canvas;
    packed-switch p0, :pswitch_data_0

    .line 126
    :goto_0
    sget-object v3, Lcom/android/launcher3/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    int-to-float v3, p1

    div-float/2addr v3, v5

    int-to-float v4, p2

    div-float/2addr v4, v5

    int-to-float v5, p3

    sget-object v6, Lcom/android/launcher3/theme/ThemeUtils;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    if-eqz p4, :cond_0

    .line 130
    invoke-static {p4, p1, p2}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 131
    .local v2, "stroker":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v2, v7, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 134
    .end local v2    # "stroker":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v0, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    return-object v1

    .line 111
    :pswitch_0
    const/high16 p0, -0x1000000

    .line 112
    goto :goto_0

    .line 114
    :pswitch_1
    const p0, -0xea4643

    .line 115
    goto :goto_0

    .line 117
    :pswitch_2
    const/16 p0, -0x69db

    .line 118
    goto :goto_0

    .line 120
    :pswitch_3
    const p0, -0x1345f6

    .line 121
    goto :goto_0

    .line 123
    :pswitch_4
    const p0, -0x5829c9

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
