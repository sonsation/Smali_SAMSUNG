.class public Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;
.super Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;
.source "EdgeNotiLightEffectView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected circlePath:Landroid/graphics/Path;

.field private lineDuration:J

.field private mMaskX_0:F

.field private mMaskX_1:F

.field private mMaskY_0:F

.field private mMaskY_1:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;-><init>(Landroid/content/Context;)V

    .line 19
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->TAG:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->lineDuration:J

    .line 23
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_0:F

    .line 24
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_1:F

    .line 25
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_0:F

    .line 26
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_1:F

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->TAG:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->lineDuration:J

    .line 23
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_0:F

    .line 24
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_1:F

    .line 25
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_0:F

    .line 26
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_1:F

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->TAG:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->lineDuration:J

    .line 23
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_0:F

    .line 24
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_1:F

    .line 25
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_0:F

    .line 26
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_1:F

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 19
    const-class v0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->TAG:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->lineDuration:J

    .line 23
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_0:F

    .line 24
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_1:F

    .line 25
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_0:F

    .line 26
    iput v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_1:F

    .line 339
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_0:F

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_0:F

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_1:F

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;
    .param p1, "x1"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_1:F

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->lineDuration:J

    return-wide v0
.end method

.method private getPaddingHeight()F
    .locals 3

    .prologue
    .line 333
    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaxPadding:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v1, v2

    .line 334
    .local v0, "tempHeight":F
    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mRadius:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 335
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mRadius:F

    .line 337
    :cond_0
    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->isDoneRound:Z

    .line 53
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mStrokeWidth:F

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setMaxPadding(F)V

    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->setRingImageAlpha(F)V

    .line 58
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mRotateDuration:J

    .line 60
    return-void
.end method


# virtual methods
.method public changeTopFGWidth(F)V
    .locals 5
    .param p1, "target"    # F

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->getPaddingHeight()F

    move-result v1

    .line 109
    .local v1, "tempHeight":F
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mTopFG:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .local v0, "param":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 111
    div-float v2, p1, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 112
    float-to-int v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 113
    div-float v2, p1, v4

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 119
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mTopFG:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-void

    .line 115
    :cond_0
    sub-float v2, p1, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 116
    float-to-int v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 117
    float-to-int v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 344
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->isDoneRound:Z

    if-eqz v0, :cond_1

    .line 345
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 350
    .local v11, "count":I
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 352
    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->getPaddingHeight()F

    move-result v4

    .line 354
    .local v4, "tempHeight":F
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 355
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v5, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_0:F

    add-float/2addr v3, v5

    add-float/2addr v3, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 356
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v0, v0

    sub-float v6, v0, v4

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v8, v0

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_0:F

    add-float v9, v4, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v7, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 357
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, v4

    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_1:F

    sub-float v6, v0, v1

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    int-to-float v0, v0

    sub-float v7, v0, v4

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v0, v0

    sub-float v8, v0, v4

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    int-to-float v9, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 358
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v4

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_1:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    int-to-float v0, v0

    sub-float v5, v0, v4

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 366
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 367
    invoke-super {p0, p1}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 368
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    add-float v1, v4, v6

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_0:F

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 361
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v0, v0

    sub-float v6, v0, v4

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v8, v0

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_0:F

    add-float v9, v4, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v7, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 362
    iget-object v5, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, v4

    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_1:F

    sub-float v6, v0, v1

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    int-to-float v0, v0

    sub-float v7, v0, v4

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v0, v0

    sub-float v8, v0, v4

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    int-to-float v9, v0

    sget-object v10, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 363
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->circlePath:Landroid/graphics/Path;

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v4

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_1:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    int-to-float v0, v0

    sub-float v5, v0, v4

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1
.end method

.method public hide()V
    .locals 6

    .prologue
    .line 302
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hide : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mIsAnimating:Z

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 309
    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x258

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->changeRingImageAlpha(FJJ)V

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->stopRotation()V

    .line 319
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$9;-><init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public resetArcAnimation()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->isDoneRound:Z

    .line 91
    iput v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_0:F

    .line 92
    iput v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskX_1:F

    .line 93
    iput v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_0:F

    .line 94
    iput v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaskY_1:F

    .line 96
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->isNeedTopGradient:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mTopFG:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mTopFG:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mTopFG:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mTopFG:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 100
    iget v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->changeTopFGWidth(F)V

    .line 102
    :cond_0
    return-void
.end method

.method public setScreenSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 377
    invoke-super {p0, p1, p2}, Lcom/samsung/android/edgelighting/view/BaseMaskImageEffectView;->setScreenSize(II)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mTopLayer:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->noti_basic_gradient:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mBottomLayer:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/edgelighting/R$drawable;->noti_basic_gradient:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mTopLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mBottomLayer:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->expandViewSize(Landroid/widget/ImageView;)V

    .line 383
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mIsAnimating:Z

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mIsAnimating:Z

    .line 69
    iget-wide v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mRotateDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->startRotation(J)V

    .line 72
    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mStrokeAlpha:F

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xc8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->changeRingImageAlpha(FJJ)V

    goto :goto_0
.end method

.method public showArcAnimation()V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->resetArcAnimation()V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->showArcAnimation0()V

    .line 84
    return-void
.end method

.method public showArcAnimation0()V
    .locals 5

    .prologue
    .line 126
    iget v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->getPaddingHeight()F

    move-result v3

    sub-float v1, v2, v3

    .line 128
    .local v1, "toValue":F
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 130
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$1;-><init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 138
    new-instance v2, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$2;-><init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 159
    iget-wide v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->lineDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 160
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 161
    return-void
.end method

.method public showArcAnimation1()V
    .locals 5

    .prologue
    .line 167
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->getPaddingHeight()F

    move-result v4

    sub-float/2addr v3, v4

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 168
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$3;-><init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 176
    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$4;-><init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    iget-wide v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->lineDuration:J

    long-to-float v1, v2

    const v2, 0x3fb33333    # 1.4f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 199
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 201
    return-void
.end method

.method public showArcAnimation2()V
    .locals 5

    .prologue
    .line 206
    iget v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mMaxPadding:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v1, v2, v3

    .line 207
    .local v1, "tempHeight":F
    iget v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mRadius:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 208
    iget v1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mRadius:F

    .line 213
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 214
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$5;-><init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    new-instance v2, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$6;-><init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 243
    iget-wide v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->lineDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 244
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 246
    return-void
.end method

.method public showArcAnimation3()V
    .locals 5

    .prologue
    .line 250
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->mHeight:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->getPaddingHeight()F

    move-result v4

    sub-float/2addr v3, v4

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 251
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$7;-><init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 259
    new-instance v1, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$8;-><init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 296
    iget-wide v2, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->lineDuration:J

    long-to-float v1, v2

    const v2, 0x3fa66666    # 1.3f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 299
    return-void
.end method
