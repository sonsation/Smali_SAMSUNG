.class public Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;
.super Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;
.source "RatioImageView.java"


# static fields
.field private static final DEFAULT_RATIO:F = 0.0f

.field private static final LOG_TAG:Ljava/lang/String; = "RatioImageView"


# instance fields
.field private mRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->mRatio:F

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method private final initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    sget-object v5, Lcom/samsung/android/app/music/R$styleable;->MilkRatioView:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 32
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 33
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 34
    .local v1, "attr":I
    if-nez v1, :cond_0

    .line 35
    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 36
    .local v4, "ratio":F
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->setRatio(F)V

    .line 32
    .end local v4    # "ratio":F
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "attr":I
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    return-void
.end method


# virtual methods
.method protected getTargetHeight()I
    .locals 3

    .prologue
    .line 44
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->getTargetHeight()I

    move-result v0

    .line 45
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getTargetWidth()I

    move-result v1

    if-lez v1, :cond_0

    if-gtz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->mRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getTargetWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->mRatio:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 48
    .end local v0    # "height":I
    :cond_0
    return v0
.end method

.method protected getViewHeight()I
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->getViewHeight()I

    move-result v0

    .line 54
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getViewWidth()I

    move-result v1

    if-lez v1, :cond_0

    if-gtz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->mRatio:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->mRatio:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 57
    .end local v0    # "height":I
    :cond_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NetworkImageView;->onMeasure(II)V

    .line 68
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->mRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->mRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->setMeasuredDimension(II)V

    .line 71
    :cond_0
    return-void
.end method

.method public setRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->mRatio:F

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/RatioImageView;->requestLayout()V

    .line 63
    return-void
.end method
