.class public Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;
.super Landroid/widget/LinearLayout;
.source "NotificationPreviewIconSlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;
    }
.end annotation


# instance fields
.field private final MORE_TEXT_SHADOW_COLOR:I

.field private mCallback:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mIconBackground:Landroid/graphics/drawable/Drawable;

.field private mIconBackgroundOnWhiteWallpaper:Landroid/graphics/drawable/Drawable;

.field private mIconPadding:I

.field private mIconSize:I

.field private mInitialY:I

.field private mIsWallpaperWhite:Z

.field private mPressedView:Landroid/view/View;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private mTouchSlop:I

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 62
    const/high16 v0, 0x66000000

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->MORE_TEXT_SHADOW_COLOR:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mSineInOut33:Landroid/view/animation/Interpolator;

    .line 62
    const/high16 v0, 0x66000000

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->MORE_TEXT_SHADOW_COLOR:I

    .line 81
    return-void
.end method

.method private cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 274
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 275
    .local v0, "clone":Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 376
    const/4 v0, 0x0

    .line 377
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 378
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 379
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 380
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3

    .line 384
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-gtz v3, :cond_2

    .line 385
    :cond_1
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 390
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 391
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    invoke-virtual {p1, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 392
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    return-object v0

    .line 387
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private getSelectedChildView(II)Landroid/view/View;
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 245
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 246
    .local v2, "r":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 247
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 249
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 250
    return-object v0

    .line 246
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private imgShadow(Landroid/graphics/Bitmap;IIIIFF)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "dstHeight"    # I
    .param p3, "dstWidth"    # I
    .param p4, "color"    # I
    .param p5, "size"    # I
    .param p6, "dx"    # F
    .param p7, "dy"    # F

    .prologue
    .line 340
    sget-object v13, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 342
    .local v6, "mask":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 343
    .local v11, "scaleToFit":Landroid/graphics/Matrix;
    new-instance v12, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 344
    .local v12, "src":Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/RectF;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v0, p3

    int-to-float v15, v0

    sub-float v15, v15, p6

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v16, v16, p7

    move/from16 v0, v16

    invoke-direct {v3, v13, v14, v15, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 345
    .local v3, "dst":Landroid/graphics/RectF;
    sget-object v13, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v11, v12, v3, v13}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 347
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v11}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 348
    .local v2, "dropShadow":Landroid/graphics/Matrix;
    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 350
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 351
    .local v7, "maskCanvas":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v8, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 352
    .local v8, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v11, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 353
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 354
    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v2, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 356
    new-instance v4, Landroid/graphics/BlurMaskFilter;

    move/from16 v0, p5

    int-to-float v13, v0

    sget-object v14, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v13, v14}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 357
    .local v4, "filter":Landroid/graphics/BlurMaskFilter;
    invoke-virtual {v8}, Landroid/graphics/Paint;->reset()V

    .line 358
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 359
    move/from16 v0, p4

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 360
    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 361
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 363
    new-instance v5, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v5, v13}, Landroid/graphics/Paint;-><init>(I)V

    .line 364
    .local v5, "iconPaint":Landroid/graphics/Paint;
    const v13, -0x50506

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 365
    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 367
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 368
    .local v9, "ret":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 369
    .local v10, "retCanvas":Landroid/graphics/Canvas;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v10, v6, v13, v14, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 370
    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v11, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 371
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 372
    return-object v9
.end method

.method private init()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTouchSlop:I

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const v1, 0x7f0d0547

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconSize:I

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 96
    const v1, 0x7f0d0549

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    const v1, 0x7f020337

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconBackground:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 100
    const v1, 0x7f020338

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconBackgroundOnWhiteWallpaper:Landroid/graphics/drawable/Drawable;

    .line 91
    return-void
.end method

.method private isIconInContainer(Landroid/view/View;)Z
    .locals 3
    .param p1, "icon"    # Landroid/view/View;

    .prologue
    .line 279
    if-eqz p1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v0

    .line 281
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 282
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 283
    const/4 v2, 0x1

    return v2

    .line 281
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isInContentArea(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    .line 182
    :cond_0
    return v0
.end method

.method private setChildProperty(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 139
    iget-object v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 143
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconSize:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 144
    iget v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconSize:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 145
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 148
    check-cast v1, Landroid/widget/ImageView;

    .line 149
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->updatePreviewIconDrawable(Landroid/widget/ImageView;)V

    .line 152
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :cond_0
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 153
    check-cast v3, Landroid/widget/TextView;

    .line 154
    .local v3, "textView":Landroid/widget/TextView;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIsWallpaperWhite:Z

    if-eqz v4, :cond_3

    const v4, -0xbbbbbc

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 158
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIsWallpaperWhite:Z

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconBackgroundOnWhiteWallpaper:Landroid/graphics/drawable/Drawable;

    .line 160
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 162
    iget v4, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    iget v5, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    iget v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    iget v7, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconPadding:I

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 138
    :cond_2
    return-void

    .line 155
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "textView":Landroid/widget/TextView;
    :cond_3
    const v4, -0x50506

    goto :goto_0

    .line 159
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIconBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method private updatePreviewIconDrawable(Landroid/widget/ImageView;)V
    .locals 10
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    const/high16 v4, 0x66000000

    const/4 v5, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 118
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 119
    .local v8, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIsWallpaperWhite:Z

    if-eqz v0, :cond_0

    .line 122
    const v0, -0xbbbbbc

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 117
    :goto_0
    return-void

    .line 124
    :cond_0
    const v0, -0x50506

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 125
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    .local v1, "src":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->imgShadow(Landroid/graphics/Bitmap;IIIIFF)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 128
    .local v9, "shadows":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 131
    .end local v1    # "src":Landroid/graphics/Bitmap;
    .end local v9    # "shadows":Landroid/graphics/Bitmap;
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 132
    .restart local v1    # "src":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->imgShadow(Landroid/graphics/Bitmap;IIIIFF)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 134
    .restart local v9    # "shadows":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 105
    move-object v0, p1

    .line 106
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setChildProperty(Landroid/view/View;)V

    .line 107
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 112
    move-object v0, p1

    .line 113
    .local v0, "v":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setChildProperty(Landroid/view/View;)V

    .line 114
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 111
    return-void
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->init()V

    .line 269
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->init()V

    .line 86
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    .line 170
    return v1

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->isInContentArea(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v8

    neg-float v8, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v9

    neg-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 190
    .local v2, "eventType":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v5, v8

    .line 191
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v6, v8

    .line 192
    .local v6, "y":I
    packed-switch v2, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getY()F

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 241
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    if-nez v8, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :cond_1
    return v7

    .line 194
    :pswitch_0
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getSelectedChildView(II)Landroid/view/View;

    move-result-object v1

    .line 195
    .local v1, "downView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {v1, v7}, Landroid/view/View;->setPressed(Z)V

    .line 197
    iput-object v1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    .line 198
    iput v6, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mInitialY:I

    goto :goto_0

    .line 202
    .end local v1    # "downView":Landroid/view/View;
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 203
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 204
    .local v3, "r":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 205
    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 206
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    .line 207
    iput-object v10, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    .line 210
    :cond_2
    iget v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mInitialY:I

    sub-int/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTouchSlop:I

    if-le v8, v9, :cond_0

    .line 211
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mCallback:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;->goToLockShade()V

    .line 213
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 214
    .local v0, "cancellation":Landroid/view/MotionEvent;
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 215
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 216
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 221
    .end local v0    # "cancellation":Landroid/view/MotionEvent;
    .end local v3    # "r":Landroid/graphics/Rect;
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 222
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    .line 223
    iput-object v10, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    .line 224
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-eqz v8, :cond_0

    .line 229
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getSelectedChildView(II)Landroid/view/View;

    move-result-object v4

    .line 230
    .local v4, "upView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    if-ne v8, v4, :cond_3

    .line 231
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    .line 233
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setPressed(Z)V

    .line 234
    iput-object v10, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mPressedView:Landroid/view/View;

    .line 235
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mTracking:Z

    goto/16 :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performIconScaleAnim(Landroid/view/View;Z)V
    .locals 9
    .param p1, "icon"    # Landroid/view/View;
    .param p2, "upScale"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 291
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->isIconInContainer(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    if-eqz p2, :cond_1

    const v1, 0x3fc3d70a    # 1.53f

    .line 293
    .local v1, "toScale":F
    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 294
    .local v0, "player":Landroid/animation/AnimatorSet;
    iget-object v2, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 295
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 296
    new-array v2, v7, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v8, [F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v5

    aput v5, v4, v6

    .line 297
    aput v1, v4, v7

    .line 296
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 298
    new-array v2, v7, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v8, [F

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

    aput v5, v4, v6

    .line 299
    aput v1, v4, v7

    .line 298
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 300
    new-instance v2, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$1;-><init>(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;ZLandroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 324
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 290
    .end local v0    # "player":Landroid/animation/AnimatorSet;
    .end local v1    # "toScale":F
    :cond_0
    return-void

    .line 292
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    .restart local v1    # "toScale":F
    goto :goto_0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mCallback:Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView$PreviewIconCallback;

    .line 260
    return-void
.end method

.method public setOnClickEvent(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 256
    return-void
.end method

.method public updateWhiteWallpaperIcon(Z)V
    .locals 4
    .param p1, "white"    # Z

    .prologue
    .line 329
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIsWallpaperWhite:Z

    if-eq v3, p1, :cond_0

    .line 330
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->mIsWallpaperWhite:Z

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildCount()I

    move-result v0

    .line 332
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 333
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 334
    .local v1, "child":Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/preview/NotificationPreviewIconSlotView;->setChildProperty(Landroid/view/View;)V

    .line 332
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 328
    .end local v0    # "N":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
