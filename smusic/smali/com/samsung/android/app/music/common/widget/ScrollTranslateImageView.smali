.class public Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;
.super Landroid/widget/ImageView;
.source "ScrollTranslateImageView.java"


# static fields
.field private static final DEFAULT_PARALLAX_RATIO:F = 0.35f


# instance fields
.field private mScrollContainerHeight:I

.field private mTranslatedY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    iput v0, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mTranslatedY:I

    .line 15
    iput v0, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mScrollContainerHeight:I

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->init()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput v0, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mTranslatedY:I

    .line 15
    iput v0, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mScrollContainerHeight:I

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput v0, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mTranslatedY:I

    .line 15
    iput v0, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mScrollContainerHeight:I

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result v0

    .line 39
    .local v0, "changed":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->translate(I)Z

    .line 40
    return v0
.end method

.method public setScrollContainerHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mScrollContainerHeight:I

    .line 92
    return-void
.end method

.method public declared-synchronized translate(I)Z
    .locals 15
    .param p1, "dy"    # I

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 45
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    .line 46
    const/4 v13, 0x0

    .line 87
    :goto_0
    monitor-exit p0

    return v13

    .line 49
    :cond_0
    :try_start_1
    iget v13, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mScrollContainerHeight:I

    if-gtz v13, :cond_1

    .line 50
    const/4 v13, 0x0

    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->getWidth()I

    move-result v13

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->getPaddingRight()I

    move-result v14

    sub-int v12, v13, v14

    .line 54
    .local v12, "viewWidth":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->getHeight()I

    move-result v13

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->getPaddingBottom()I

    move-result v14

    sub-int v11, v13, v14

    .line 55
    .local v11, "viewHeight":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 56
    .local v5, "drawableWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 59
    .local v4, "drawableHeight":I
    mul-int v13, v5, v11

    mul-int v14, v4, v12

    if-le v13, v14, :cond_4

    .line 60
    int-to-float v13, v11

    int-to-float v14, v4

    div-float v10, v13, v14

    .line 65
    .local v10, "scale":F
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->getMeasuredHeight()I

    move-result v8

    .line 66
    .local v8, "measuredHeight":I
    int-to-float v13, v4

    mul-float/2addr v13, v10

    int-to-float v14, v8

    sub-float v2, v13, v14

    .line 67
    .local v2, "difference":F
    iget v13, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mTranslatedY:I

    add-int v13, v13, p1

    iput v13, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mTranslatedY:I

    .line 68
    iget v13, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mTranslatedY:I

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 69
    .local v0, "absTranslatedY":I
    if-le v0, v8, :cond_2

    .line 70
    iget v13, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mTranslatedY:I

    div-int/2addr v13, v0

    mul-int/2addr v13, v8

    iput v13, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mTranslatedY:I

    .line 72
    :cond_2
    iget v13, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mTranslatedY:I

    int-to-float v13, v13

    iget v14, p0, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->mScrollContainerHeight:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    mul-float/2addr v13, v2

    const v14, 0x3eb33333    # 0.35f

    mul-float v9, v13, v14

    .line 74
    .local v9, "move":F
    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v2, v13

    sub-float/2addr v9, v13

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 77
    .local v6, "imageMatrix":Landroid/graphics/Matrix;
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v13, v10, v13

    if-eqz v13, :cond_3

    .line 78
    invoke-virtual {v6, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 80
    :cond_3
    const/16 v13, 0x9

    new-array v7, v13, [F

    .line 81
    .local v7, "matrixValues":[F
    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->getValues([F)V

    .line 82
    const/4 v13, 0x5

    aget v1, v7, v13

    .line 83
    .local v1, "current":F
    const/4 v13, 0x0

    sub-float v14, v9, v1

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 84
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/widget/ScrollTranslateImageView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 62
    .end local v0    # "absTranslatedY":I
    .end local v1    # "current":F
    .end local v2    # "difference":F
    .end local v6    # "imageMatrix":Landroid/graphics/Matrix;
    .end local v7    # "matrixValues":[F
    .end local v8    # "measuredHeight":I
    .end local v9    # "move":F
    .end local v10    # "scale":F
    :cond_4
    int-to-float v13, v12

    int-to-float v14, v5

    div-float v10, v13, v14

    .restart local v10    # "scale":F
    goto :goto_1

    .line 44
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "drawableHeight":I
    .end local v5    # "drawableWidth":I
    .end local v10    # "scale":F
    .end local v11    # "viewHeight":I
    .end local v12    # "viewWidth":I
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method
