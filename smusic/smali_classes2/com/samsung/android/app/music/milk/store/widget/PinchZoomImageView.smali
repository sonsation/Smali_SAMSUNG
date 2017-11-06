.class public Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;
.super Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
.source "PinchZoomImageView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PinchZoomImageView"

.field private static final MAXIMUM_SCALE:F = 10.0f

.field private static final MEDIUM_SCALE:F = 5.0f


# instance fields
.field private errorUrl:Z

.field private mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field private mCurrentScale:F

.field private mImageHeight:I

.field private mImageWidth:I

.field private mLastScale:F

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->errorUrl:Z

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method private static determineMaximumScaleFactor(Landroid/widget/ImageView$ScaleType;IIII)F
    .locals 8
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "bitmapWidth"    # I
    .param p4, "bitmapHeight"    # I

    .prologue
    .line 65
    int-to-float v5, p1

    int-to-float v6, p2

    div-float v3, v5, v6

    .line 66
    .local v3, "deviceRatio":F
    int-to-float v5, p3

    int-to-float v6, p4

    div-float v1, v5, v6

    .line 68
    .local v1, "bitmapRatio":F
    int-to-float v2, p1

    .line 69
    .local v2, "device":F
    int-to-float v0, p3

    .line 72
    .local v0, "bitmap":F
    cmpl-float v5, v3, v1

    if-lez v5, :cond_0

    .line 73
    int-to-float v2, p2

    .line 74
    int-to-float v0, p4

    .line 77
    :cond_0
    div-float v5, v0, v2

    const/high16 v6, 0x41200000    # 10.0f

    mul-float v4, v5, v6

    .line 78
    .local v4, "scale":F
    const-string v5, "PinchZoomImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "determineMaximumScaleFactor : scale - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", device ratio - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bitmap ratio - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return v4
.end method

.method private static determineMediaumScaleFactor(Landroid/widget/ImageView$ScaleType;IIII)F
    .locals 8
    .param p0, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I
    .param p3, "bitmapWidth"    # I
    .param p4, "bitmapHeight"    # I

    .prologue
    .line 86
    int-to-float v5, p1

    int-to-float v6, p2

    div-float v3, v5, v6

    .line 87
    .local v3, "deviceRatio":F
    int-to-float v5, p3

    int-to-float v6, p4

    div-float v1, v5, v6

    .line 89
    .local v1, "bitmapRatio":F
    int-to-float v2, p1

    .line 90
    .local v2, "device":F
    int-to-float v0, p3

    .line 93
    .local v0, "bitmap":F
    cmpl-float v5, v3, v1

    if-lez v5, :cond_0

    .line 94
    int-to-float v2, p2

    .line 95
    int-to-float v0, p4

    .line 98
    :cond_0
    div-float v5, v0, v2

    const/high16 v6, 0x40a00000    # 5.0f

    mul-float v4, v5, v6

    .line 99
    .local v4, "scale":F
    const-string v5, "PinchZoomImageView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "determineMaximumScaleFactor : scale - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", device ratio - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bitmap ratio - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return v4
.end method

.method private init()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 149
    :cond_0
    new-instance v0, Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 151
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->init()V

    .line 107
    const-string/jumbo v9, "window"

    .line 108
    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 110
    .local v8, "windowManager":Landroid/view/WindowManager;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 111
    .local v7, "size":Landroid/graphics/Point;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/samsung/android/app/music/milk/compat/DisplayCompat;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 112
    iget v9, v7, Landroid/graphics/Point;->x:I

    iput v9, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mScreenWidth:I

    .line 113
    iget v9, v7, Landroid/graphics/Point;->y:I

    iput v9, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mScreenHeight:I

    .line 114
    const-string v9, "PinchZoomImageView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "init : screen width - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mScreenWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", height - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mScreenHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v9, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v9}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 118
    const/high16 v6, 0x3f800000    # 1.0f

    .line 119
    .local v6, "minScale":F
    const/high16 v5, 0x40a00000    # 5.0f

    .line 120
    .local v5, "midScale":F
    const/high16 v4, 0x41200000    # 10.0f

    .line 122
    .local v4, "maxScale":F
    if-eqz p2, :cond_4

    .line 123
    sget-object v9, Lcom/samsung/android/app/music/R$styleable;->MilkPinchZoom:[I

    invoke-virtual {p1, p2, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 125
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 126
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 127
    .local v1, "attr":I
    const/4 v9, 0x2

    if-ne v1, v9, :cond_1

    .line 128
    invoke-virtual {v0, v1, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 125
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_1
    if-nez v1, :cond_2

    .line 130
    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    goto :goto_1

    .line 131
    :cond_2
    const/4 v9, 0x1

    if-ne v1, v9, :cond_0

    .line 132
    const/high16 v9, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    goto :goto_1

    .line 135
    .end local v1    # "attr":I
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v2    # "count":I
    .end local v3    # "index":I
    :cond_4
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMinimumScale(F)V

    .line 141
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMaximumScale(F)V

    .line 142
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMediumScale(F)V

    .line 144
    iput v12, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mLastScale:F

    iput v12, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mCurrentScale:F

    .line 145
    return-void
.end method

.method private updateScaleFactor()V
    .locals 9

    .prologue
    .line 401
    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mScreenWidth:I

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mScreenHeight:I

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mImageWidth:I

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mImageHeight:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->determineMaximumScaleFactor(Landroid/widget/ImageView$ScaleType;IIII)F

    move-result v1

    .line 404
    .local v1, "maximumScale":F
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mScreenWidth:I

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mScreenHeight:I

    iget v7, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mImageWidth:I

    iget v8, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mImageHeight:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->determineMediaumScaleFactor(Landroid/widget/ImageView$ScaleType;IIII)F

    move-result v2

    .line 406
    .local v2, "mediumScale":F
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getMinimumScale()F

    move-result v3

    .line 408
    .local v3, "minimumScale":F
    const/4 v0, 0x0

    .line 410
    .local v0, "canZoom":Z
    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 411
    const/4 v0, 0x1

    .line 414
    :cond_0
    const-string v4, "PinchZoomImageView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateScaleFactor : maximum scale - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", minimum - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", medium - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", can zoom - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    if-eqz v0, :cond_1

    .line 419
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMaximumScale(F)V

    .line 420
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMediumScale(F)V

    .line 421
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setMaximumScale(F)V

    .line 424
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setZoomable(Z)V

    .line 425
    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->canZoom()Z

    move-result v0

    return v0
.end method

.method protected dispatchLoadingCompleted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 336
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->dispatchLoadingCompleted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 337
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->hasErrorUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setZoomable(Z)V

    .line 339
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mShowImageOnError:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 340
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mShowImageOnError:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setImageResource(I)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mImageWidth:I

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mImageHeight:I

    if-gtz v0, :cond_0

    .line 345
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setOriginalImageSize(II)V

    .line 346
    const-string v0, "PinchZoomImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAsyncImageLoadingComplete : uri - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dispatchLoadingFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setZoomable(Z)V

    .line 354
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mShowImageOnError:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 355
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mShowImageOnError:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setImageResource(I)V

    .line 357
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 430
    const-string v0, "PinchZoomImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dispatchTouchEvent] mCurrentScale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mCurrentScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastScale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mLastScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mCurrentScale:F

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mLastScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 434
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "933"

    const-string v2, "9352"

    .line 435
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mLastScale:F

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mCurrentScale:F

    .line 443
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 436
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mCurrentScale:F

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mLastScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 437
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "933"

    const-string v2, "9353"

    .line 438
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getIPhotoViewImplementation()Luk/co/senab/photoview/IPhotoView;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getOnViewTapListener()Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->getVisibleRectangleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public hasErrorUrl()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->errorUrl:Z

    return v0
.end method

.method public loadImage(Ljava/lang/String;ZLcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "initDrawable"    # Z
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;
    .param p4, "defResId"    # I

    .prologue
    .line 280
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 281
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->errorUrl:Z

    .line 282
    const-string v1, "none"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_2

    .line 283
    :cond_0
    const-string v1, "PinchZoomImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImage : url - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", so load default image"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mShowImageOnError:I

    .line 285
    .local v0, "errorResource":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 286
    const v0, 0x7f020249

    .line 288
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawable://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 289
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->errorUrl:Z

    .line 292
    .end local v0    # "errorResource":I
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->loadImage(Ljava/lang/String;ZLcom/samsung/android/app/music/milk/store/widget/ImageLoadingListener;I)V

    .line 293
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->init()V

    .line 322
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->onAttachedToWindow()V

    .line 323
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 324
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 325
    return-void
.end method

.method public onDefaultScale()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getMinimumScale()F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setScale(FFFZ)V

    .line 379
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->cleanup()V

    .line 330
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->onDetachedFromWindow()V

    .line 331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 332
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getScale()F

    move-result v0

    .line 367
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 368
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 369
    .local v2, "y":F
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getMediumScale()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getMediumScale()F

    move-result v3

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setScale(FFFZ)V

    .line 374
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getMinimumScale()F

    move-result v3

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->setScale(FFFZ)V

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 388
    const-string v0, "PinchZoomImageView"

    const-string v1, "onPhotoTap : tab"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public onScaleChange(FFF)V
    .locals 3
    .param p1, "scaleFactor"    # F
    .param p2, "focusX"    # F
    .param p3, "focusY"    # F

    .prologue
    .line 393
    const-string v0, "PinchZoomImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleChange : scale - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 394
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getScale()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", scale factor - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", focusX - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", focusY - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->getScale()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mLastScale:F

    .line 398
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 361
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1
    .param p1, "allow"    # Z

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    .line 198
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1
    .param p1, "finalRectangle"    # Landroid/graphics/Matrix;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result v0

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 298
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    .line 301
    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageResource(I)V

    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    .line 309
    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 313
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->setImageURI(Landroid/net/Uri;)V

    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->update()V

    .line 317
    :cond_0
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1
    .param p1, "maximumScale"    # F

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 186
    return-void
.end method

.method public setMediumScale(F)V
    .locals 1
    .param p1, "mediumScale"    # F

    .prologue
    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 178
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1
    .param p1, "minimumScale"    # F

    .prologue
    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 170
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1
    .param p1, "newOnDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 250
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 230
    return-void
.end method

.method public setOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    .line 226
    return-void
.end method

.method public setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 238
    return-void
.end method

.method public setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 1
    .param p1, "onScaleChangeListener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnScaleChangeListener(Luk/co/senab/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    .line 255
    return-void
.end method

.method public setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1
    .param p1, "listener"    # Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnViewTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 246
    return-void
.end method

.method public setOriginalImageSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 154
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mImageHeight:I

    .line 155
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mImageWidth:I

    .line 156
    const-string v0, "PinchZoomImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setOriginalImageSize : width - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->updateScaleFactor()V

    .line 158
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(F)V

    .line 194
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "focalX"    # F
    .param p3, "focalY"    # F
    .param p4, "animate"    # Z

    .prologue
    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 271
    return-void
.end method

.method public setScale(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Luk/co/senab/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 206
    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 1
    .param p1, "minimumScale"    # F
    .param p2, "mediumScale"    # F
    .param p3, "maximumScale"    # F

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;->setScaleLevels(FFF)V

    .line 202
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1
    .param p1, "milliseconds"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    .line 267
    return-void
.end method

.method public setZoomable(Z)V
    .locals 1
    .param p1, "zoomable"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/PinchZoomImageView;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Luk/co/senab/photoview/PhotoViewAttacher;->setZoomable(Z)V

    .line 162
    return-void
.end method
