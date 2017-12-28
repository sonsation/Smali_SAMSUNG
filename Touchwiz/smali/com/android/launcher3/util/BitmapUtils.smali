.class public Lcom/android/launcher3/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/BitmapUtils$CanvasPool;,
        Lcom/android/launcher3/util/BitmapUtils$FixedSizeBitmapDrawable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Launcher.BitmapUtils"

.field private static mCanvasPool:Lcom/android/launcher3/util/BitmapUtils$CanvasPool;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sColorIndex:I

.field private static sColors:[I

.field private static final sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/BitmapUtils;->sOldBounds:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher3/util/BitmapUtils;->sColors:[I

    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/BitmapUtils;->sColorIndex:I

    .line 38
    new-instance v0, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;-><init>(Lcom/android/launcher3/util/BitmapUtils$1;)V

    sput-object v0, Lcom/android/launcher3/util/BitmapUtils;->mCanvasPool:Lcom/android/launcher3/util/BitmapUtils$CanvasPool;

    .line 41
    sget-object v0, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 43
    return-void

    .line 36
    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static badgeIconForUser(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 429
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    new-instance v1, Lcom/android/launcher3/util/BitmapUtils$FixedSizeBitmapDrawable;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/BitmapUtils$FixedSizeBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 431
    .local v1, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 432
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 431
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 433
    .local v0, "badged":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    .line 434
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "badged":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    .line 439
    .end local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 436
    .restart local v0    # "badged":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v0, p2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static badgeWithBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "srcTgt"    # Landroid/graphics/Bitmap;
    .param p1, "badge"    # Landroid/graphics/Bitmap;
    .param p2, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0187

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 413
    .local v0, "badgeSize":I
    sget-object v2, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v2

    .line 414
    :try_start_0
    sget-object v1, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 415
    sget-object v1, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    .line 416
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v0

    .line 417
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 415
    invoke-virtual {v1, p1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 419
    sget-object v1, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 420
    monitor-exit v2

    .line 421
    return-object p0

    .line 420
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "iconIndex"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 48
    .local v0, "data":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 50
    :goto_0
    return-object v2

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-static {}, Lcom/android/launcher3/util/BitmapUtils;->getIconBitmapSize()I

    move-result v0

    .line 102
    .local v0, "iconBitmapSize":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 105
    .end local p0    # "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .restart local p0    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v1, p1}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 22
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    sget-object v20, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v20

    .line 113
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/util/BitmapUtils;->getIconBitmapSize()I

    move-result v9

    .line 115
    .local v9, "iconBitmapSize":I
    move/from16 v18, v9

    .line 116
    .local v18, "width":I
    move v8, v9

    .line 118
    .local v8, "height":I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 119
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v11, v0

    .line 120
    .local v11, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 121
    invoke-virtual {v11, v8}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 130
    .end local v11    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 131
    .local v14, "sourceWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 132
    .local v13, "sourceHeight":I
    if-lez v14, :cond_1

    if-lez v13, :cond_1

    .line 134
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v13

    move/from16 v21, v0

    div-float v12, v19, v21

    .line 135
    .local v12, "ratio":F
    if-le v14, v13, :cond_3

    .line 136
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v8, v0

    .line 143
    .end local v12    # "ratio":F
    :cond_1
    :goto_1
    move/from16 v16, v9

    .line 144
    .local v16, "textureWidth":I
    move v15, v9

    .line 146
    .local v15, "textureHeight":I
    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 148
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Lcom/android/launcher3/util/BitmapUtils;->sCanvas:Landroid/graphics/Canvas;

    .line 149
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 151
    sub-int v19, v16, v18

    div-int/lit8 v10, v19, 0x2

    .line 152
    .local v10, "left":I
    sub-int v19, v15, v8

    div-int/lit8 v17, v19, 0x2

    .line 155
    .local v17, "top":I
    const/4 v7, 0x0

    .line 165
    .local v7, "debug":Z
    sget-object v19, Lcom/android/launcher3/util/BitmapUtils;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 166
    add-int v19, v10, v18

    add-int v21, v17, v8

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 167
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 168
    sget-object v19, Lcom/android/launcher3/util/BitmapUtils;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    monitor-exit v20

    return-object v4

    .line 122
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "canvas":Landroid/graphics/Canvas;
    .end local v7    # "debug":Z
    .end local v10    # "left":I
    .end local v13    # "sourceHeight":I
    .end local v14    # "sourceWidth":I
    .end local v15    # "textureHeight":I
    .end local v16    # "textureWidth":I
    .end local v17    # "top":I
    :cond_2
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 124
    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v5, v0

    .line 125
    .local v5, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 126
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v19

    if-nez v19, :cond_0

    .line 127
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_0

    .line 172
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v8    # "height":I
    .end local v9    # "iconBitmapSize":I
    .end local v18    # "width":I
    :catchall_0
    move-exception v19

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v19

    .line 137
    .restart local v8    # "height":I
    .restart local v9    # "iconBitmapSize":I
    .restart local v12    # "ratio":F
    .restart local v13    # "sourceHeight":I
    .restart local v14    # "sourceWidth":I
    .restart local v18    # "width":I
    :cond_3
    if-le v13, v14, :cond_1

    .line 138
    int-to-float v0, v8

    move/from16 v19, v0

    mul-float v19, v19, v12

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_1
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 179
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 180
    .local v8, "oldBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01ab

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    .line 181
    .local v11, "shortcutBounds":I
    const/4 v5, 0x0

    .line 182
    .local v5, "copyIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 185
    :cond_0
    if-nez v5, :cond_1

    .line 186
    move-object/from16 v5, p0

    .line 188
    :cond_1
    instance-of v14, v5, Landroid/graphics/drawable/PaintDrawable;

    if-eqz v14, :cond_4

    move-object v9, v5

    .line 189
    check-cast v9, Landroid/graphics/drawable/PaintDrawable;

    .line 190
    .local v9, "painter":Landroid/graphics/drawable/PaintDrawable;
    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 191
    move/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 199
    .end local v9    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_0
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 200
    const/high16 v10, 0x3f800000    # 1.0f

    .line 201
    .local v10, "scale":F
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 202
    .local v13, "sourceWidth":I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    .line 203
    .local v12, "sourceHeight":I
    if-lez v13, :cond_3

    if-gtz v12, :cond_5

    .line 204
    :cond_3
    move/from16 v13, p2

    .line 205
    move/from16 v12, p3

    .line 206
    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v5, v14, v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    :goto_1
    sub-int v14, p2, v13

    add-int v6, v14, v11

    .line 221
    .local v6, "dx":I
    sub-int v14, p3, v12

    add-int v7, v14, v11

    .line 223
    .local v7, "dy":I
    add-int v14, p2, v11

    add-int v15, p3, v11

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 224
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    sget-object v14, Lcom/android/launcher3/util/BitmapUtils;->mCanvasPool:Lcom/android/launcher3/util/BitmapUtils$CanvasPool;

    invoke-virtual {v14}, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;->get()Landroid/graphics/Canvas;

    move-result-object v4

    .line 225
    .local v4, "canvas":Landroid/graphics/Canvas;
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 226
    invoke-virtual {v4, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    int-to-float v14, v6

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v14, v15

    int-to-float v15, v7

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v15, v15, v16

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 228
    invoke-virtual {v4, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 229
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    invoke-virtual {v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 231
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    sget-object v14, Lcom/android/launcher3/util/BitmapUtils;->mCanvasPool:Lcom/android/launcher3/util/BitmapUtils$CanvasPool;

    invoke-virtual {v14, v4}, Lcom/android/launcher3/util/BitmapUtils$CanvasPool;->recycle(Landroid/graphics/Canvas;)V

    .line 233
    return-object v2

    .line 192
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v6    # "dx":I
    .end local v7    # "dy":I
    .end local v10    # "scale":F
    .end local v12    # "sourceHeight":I
    .end local v13    # "sourceWidth":I
    :cond_4
    instance-of v14, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v14, :cond_2

    move-object v3, v5

    .line 194
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 195
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v14

    if-nez v14, :cond_2

    .line 196
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    .line 209
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v10    # "scale":F
    .restart local v12    # "sourceHeight":I
    .restart local v13    # "sourceWidth":I
    :cond_5
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15, v13, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 211
    move/from16 v0, p2

    int-to-float v14, v0

    int-to-float v15, v13

    div-float/2addr v14, v15

    move/from16 v0, p3

    int-to-float v15, v0

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 213
    int-to-float v14, v13

    mul-float/2addr v14, v10

    float-to-int v13, v14

    .line 214
    int-to-float v14, v12

    mul-float/2addr v14, v10

    float-to-int v12, v14

    goto :goto_1
.end method

.method public static createIconBitmap(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "resourceName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 73
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    .local v2, "resources":Landroid/content/res/Resources;
    if-eqz v2, :cond_0

    .line 75
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "id":I
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    .line 78
    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/IconCache;->getIconDpi()I

    move-result v4

    .line 77
    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 76
    invoke-static {v4, p2}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 83
    .end local v0    # "id":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v3

    .line 80
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 2
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "iconSize"    # I

    .prologue
    .line 58
    new-instance v0, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    .line 59
    .local v0, "d":Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 60
    return-object v0
.end method

.method public static findDominantColorByHue(Landroid/graphics/Bitmap;I)I
    .locals 30
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "samples"    # I

    .prologue
    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 327
    .local v9, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    .line 328
    .local v22, "width":I
    int-to-double v0, v9

    move-wide/from16 v26, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v19, v0

    .line 329
    .local v19, "sampleStride":I
    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 330
    const/16 v19, 0x1

    .line 334
    :cond_0
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v11, v0, [F

    .line 338
    .local v11, "hsv":[F
    const/16 v25, 0x168

    move/from16 v0, v25

    new-array v13, v0, [F

    .line 339
    .local v13, "hueScoreHistogram":[F
    const/high16 v10, -0x40800000    # -1.0f

    .line 340
    .local v10, "highScore":F
    const/4 v7, -0x1

    .line 342
    .local v7, "bestHue":I
    const/16 v24, 0x0

    .local v24, "y":I
    :goto_0
    move/from16 v0, v24

    if-ge v0, v9, :cond_4

    .line 343
    const/16 v23, 0x0

    .local v23, "x":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 344
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v5

    .line 345
    .local v5, "argb":I
    shr-int/lit8 v25, v5, 0x18

    move/from16 v0, v25

    and-int/lit16 v4, v0, 0xff

    .line 346
    .local v4, "alpha":I
    const/16 v25, 0x80

    move/from16 v0, v25

    if-ge v4, v0, :cond_2

    .line 343
    :cond_1
    :goto_2
    add-int v23, v23, v19

    goto :goto_1

    .line 351
    :cond_2
    const/high16 v25, -0x1000000

    or-int v16, v5, v25

    .line 352
    .local v16, "rgb":I
    move/from16 v0, v16

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 354
    const/16 v25, 0x0

    aget v25, v11, v25

    move/from16 v0, v25

    float-to-int v12, v0

    .line 355
    .local v12, "hue":I
    if-ltz v12, :cond_1

    array-length v0, v13

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v12, v0, :cond_1

    .line 359
    const/16 v25, 0x1

    aget v25, v11, v25

    const/16 v26, 0x2

    aget v26, v11, v26

    mul-float v20, v25, v26

    .line 360
    .local v20, "score":F
    aget v25, v13, v12

    add-float v25, v25, v20

    aput v25, v13, v12

    .line 361
    aget v25, v13, v12

    cmpl-float v25, v25, v10

    if-lez v25, :cond_1

    .line 362
    aget v10, v13, v12

    .line 363
    move v7, v12

    goto :goto_2

    .line 342
    .end local v4    # "alpha":I
    .end local v5    # "argb":I
    .end local v12    # "hue":I
    .end local v16    # "rgb":I
    .end local v20    # "score":F
    :cond_3
    add-int v24, v24, v19

    goto :goto_0

    .line 368
    .end local v23    # "x":I
    :cond_4
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 369
    .local v17, "rgbScores":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Float;>;"
    const/high16 v6, -0x1000000

    .line 370
    .local v6, "bestColor":I
    const/high16 v10, -0x40800000    # -1.0f

    .line 374
    const/16 v24, 0x0

    :goto_3
    move/from16 v0, v24

    if-ge v0, v9, :cond_8

    .line 375
    const/16 v23, 0x0

    .restart local v23    # "x":I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 376
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v25

    const/high16 v26, -0x1000000

    or-int v16, v25, v26

    .line 377
    .restart local v16    # "rgb":I
    move/from16 v0, v16

    invoke-static {v0, v11}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 378
    const/16 v25, 0x0

    aget v25, v11, v25

    move/from16 v0, v25

    float-to-int v12, v0

    .line 379
    .restart local v12    # "hue":I
    if-ne v12, v7, :cond_5

    .line 380
    const/16 v25, 0x1

    aget v18, v11, v25

    .line 381
    .local v18, "s":F
    const/16 v25, 0x2

    aget v21, v11, v25

    .line 382
    .local v21, "v":F
    const/high16 v25, 0x42c80000    # 100.0f

    mul-float v25, v25, v18

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const v26, 0x461c4000    # 10000.0f

    mul-float v26, v26, v21

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    add-int v8, v25, v26

    .line 384
    .local v8, "bucket":I
    mul-float v20, v18, v21

    .line 385
    .restart local v20    # "score":F
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 386
    .local v15, "oldTotal":Ljava/lang/Float;
    if-nez v15, :cond_6

    move/from16 v14, v20

    .line 387
    .local v14, "newTotal":F
    :goto_5
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    cmpl-float v25, v14, v10

    if-lez v25, :cond_5

    .line 389
    move v10, v14

    .line 391
    move/from16 v6, v16

    .line 375
    .end local v8    # "bucket":I
    .end local v14    # "newTotal":F
    .end local v15    # "oldTotal":Ljava/lang/Float;
    .end local v18    # "s":F
    .end local v20    # "score":F
    .end local v21    # "v":F
    :cond_5
    add-int v23, v23, v19

    goto :goto_4

    .line 386
    .restart local v8    # "bucket":I
    .restart local v15    # "oldTotal":Ljava/lang/Float;
    .restart local v18    # "s":F
    .restart local v20    # "score":F
    .restart local v21    # "v":F
    :cond_6
    invoke-virtual {v15}, Ljava/lang/Float;->floatValue()F

    move-result v25

    add-float v14, v25, v20

    goto :goto_5

    .line 374
    .end local v8    # "bucket":I
    .end local v12    # "hue":I
    .end local v15    # "oldTotal":Ljava/lang/Float;
    .end local v16    # "rgb":I
    .end local v18    # "s":F
    .end local v20    # "score":F
    .end local v21    # "v":F
    :cond_7
    add-int v24, v24, v19

    goto :goto_3

    .line 396
    .end local v23    # "x":I
    :cond_8
    return v6
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 264
    if-nez p0, :cond_0

    .line 265
    const/4 v1, 0x0

    .line 276
    .local v1, "bmp":Landroid/graphics/Bitmap;
    .local v4, "srcWidth":I
    .local v5, "srcHeight":I
    :goto_0
    return-object v1

    .line 267
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "srcWidth":I
    .end local v5    # "srcHeight":I
    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 268
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 270
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 271
    .restart local v4    # "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 273
    .restart local v5    # "srcHeight":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 274
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/util/BitmapUtils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    goto :goto_0
.end method

.method public static getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 281
    if-nez p0, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 295
    :goto_0
    return-object v1

    .line 285
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 286
    .local v4, "srcWidth":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 288
    .local v5, "srcHeight":I
    int-to-float v0, p1

    int-to-float v3, v4

    div-float v7, v0, v3

    .line 289
    .local v7, "rationX":F
    int-to-float v0, p2

    int-to-float v3, v5

    div-float v8, v0, v3

    .line 290
    .local v8, "rationY":F
    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 292
    .local v6, "ratio":F
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bmp":Landroid/graphics/Bitmap;
    move-object v0, p0

    move v3, v2

    .line 293
    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/util/BitmapUtils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    goto :goto_0
.end method

.method public static getBitmapWithColor(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "color"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 237
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-object v4

    .line 240
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 241
    .local v3, "res":Landroid/content/res/Resources;
    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 243
    const-string v5, "Launcher.BitmapUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can\'t decode resource : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 250
    :cond_2
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 251
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {v2, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 253
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 254
    .local v4, "resultBmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 255
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v5

    if-nez v5, :cond_3

    .line 256
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5, v8, v8, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 258
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getIconBitmapSize()I
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 89
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 90
    .local v1, "profile":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    if-nez v1, :cond_0

    .line 91
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 92
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0a00cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 94
    .end local v2    # "res":Landroid/content/res/Resources;
    :goto_0
    return v3

    :cond_0
    iget v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultIconSize:I

    goto :goto_0
.end method

.method public static getResizedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 400
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 401
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 402
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    .line 403
    invoke-static {v0, p2, p3, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 404
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    return-object v1
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 8
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "scale"    # F

    .prologue
    .line 300
    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/util/BitmapUtils;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V

    .line 301
    return-void
.end method

.method public static renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFI)V
    .locals 4
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "scale"    # F
    .param p7, "multiplyColor"    # I

    .prologue
    .line 305
    if-eqz p1, :cond_1

    .line 306
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 307
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 308
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 309
    .local v1, "oldBounds":Landroid/graphics/Rect;
    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {p0, p2, p3, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 310
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 312
    const/4 v2, -0x1

    if-eq p7, v2, :cond_0

    .line 313
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p7, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 315
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 317
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "oldBounds":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method
