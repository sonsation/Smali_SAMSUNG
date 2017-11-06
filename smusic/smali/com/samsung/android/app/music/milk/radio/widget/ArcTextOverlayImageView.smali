.class public Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ArcTextOverlayImageView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected isBottom:Z

.field private mIsTextConvex:Z

.field protected mPaintText:Landroid/graphics/Paint;

.field protected mPathText:Landroid/graphics/Path;

.field private mText:Ljava/lang/CharSequence;

.field private mTextColor:I

.field protected mTextOffset:F

.field private mTextOffsetFromDefault:F

.field private mTextSize:F

.field private mTextTopPadding:F

.field private mTxtBoundsHeight:F

.field private mTxtBoundsWidth:F

.field private mTxtWidth:I

.field private mViewHeight:F

.field private mViewWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextColor:I

    .line 35
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPathText:Landroid/graphics/Path;

    .line 38
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextOffsetFromDefault:F

    .line 39
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextOffset:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->isBottom:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mIsTextConvex:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextColor:I

    .line 35
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPathText:Landroid/graphics/Path;

    .line 38
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextOffsetFromDefault:F

    .line 39
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextOffset:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->isBottom:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mIsTextConvex:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextColor:I

    .line 35
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPathText:Landroid/graphics/Path;

    .line 38
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextOffsetFromDefault:F

    .line 39
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextOffset:F

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->isBottom:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mIsTextConvex:Z

    .line 51
    return-void
.end method

.method private calculateView()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 202
    :goto_0
    return-void

    .line 161
    :cond_0
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewWidth:F

    iget v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextTopPadding:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewWidth:F

    .line 162
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewHeight:F

    iget v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextTopPadding:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewHeight:F

    .line 163
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsWidth:F

    iget v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextTopPadding:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsWidth:F

    .line 164
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsHeight:F

    iget v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextTopPadding:F

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsHeight:F

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextTopPadding:F

    float-to-int v8, v8

    add-int v6, v7, v8

    .line 167
    .local v6, "vertPadding":I
    int-to-float v7, v6

    div-float v1, v7, v10

    .line 168
    .local v1, "halfVertPadding":F
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewWidth:F

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewWidth:F

    .line 169
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewHeight:F

    int-to-float v8, v6

    add-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewHeight:F

    .line 172
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsWidth:F

    iget v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewWidth:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsWidth:F

    div-float/2addr v7, v10

    iget v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewWidth:F

    div-float/2addr v8, v10

    sub-float/2addr v7, v8

    add-float/2addr v7, v1

    neg-float v2, v7

    .line 175
    .local v2, "left":F
    :goto_1
    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mIsTextConvex:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    add-float v5, v7, v1

    .line 176
    .local v5, "top":F
    :goto_2
    iget-boolean v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mIsTextConvex:Z

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsHeight:F

    add-float v0, v7, v1

    .line 178
    .local v0, "bottom":F
    :goto_3
    new-instance v3, Landroid/graphics/RectF;

    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsWidth:F

    add-float/2addr v7, v2

    invoke-direct {v3, v2, v5, v7, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 180
    .local v3, "rectCircle":Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->checkText()V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->createPaintObjects()V

    .line 184
    invoke-direct {p0, v3}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->createPathObjects(Landroid/graphics/RectF;)V

    .line 187
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 190
    .local v4, "rectText":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 191
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtWidth:I

    .line 198
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextOffsetFromDefault:F

    iput v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextOffset:F

    goto/16 :goto_0

    .line 172
    .end local v0    # "bottom":F
    .end local v2    # "left":F
    .end local v3    # "rectCircle":Landroid/graphics/RectF;
    .end local v4    # "rectText":Landroid/graphics/Rect;
    .end local v5    # "top":F
    :cond_1
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewWidth:F

    iget v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsWidth:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v10

    add-float v2, v7, v1

    goto :goto_1

    .line 175
    .restart local v2    # "left":F
    :cond_2
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsHeight:F

    iget v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewHeight:F

    sub-float/2addr v7, v8

    neg-float v7, v7

    sub-float v5, v7, v1

    goto :goto_2

    .line 176
    .restart local v5    # "top":F
    :cond_3
    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewHeight:F

    sub-float v0, v7, v1

    goto :goto_3
.end method

.method private checkText()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mText:Ljava/lang/CharSequence;

    .line 212
    :cond_0
    return-void
.end method

.method private createPathObjects(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "rectCircle"    # Landroid/graphics/RectF;

    .prologue
    .line 233
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPathText:Landroid/graphics/Path;

    .line 234
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->isBottom:Z

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPathText:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPathText:Landroid/graphics/Path;

    const/high16 v2, 0x43070000    # 135.0f

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mIsTextConvex:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x43870000    # 270.0f

    :goto_1
    invoke-virtual {v1, p1, v2, v0}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    goto :goto_0

    :cond_1
    const/high16 v0, -0x3c790000    # -270.0f

    goto :goto_1
.end method


# virtual methods
.method protected createPaintObjects()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getRadioTypefaceLato(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 226
    return-void
.end method

.method public getArcTextWidth()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtWidth:I

    return v0
.end method

.method public initArcText()V
    .locals 2

    .prologue
    .line 119
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 120
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->recalculateView()V

    .line 124
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPathText:Landroid/graphics/Path;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextOffset:F

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mPaintText:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 251
    return-void
.end method

.method public recalculateView()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->calculateView()V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->invalidate()V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->requestLayout()V

    .line 150
    return-void
.end method

.method public setArcText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mText:Ljava/lang/CharSequence;

    .line 102
    return-void
.end method

.method public setArcTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextColor:I

    .line 98
    return-void
.end method

.method public setArcTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    .line 105
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextSize:F

    .line 106
    return-void
.end method

.method public setDirectionToBottom()V
    .locals 1

    .prologue
    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->isBottom:Z

    .line 243
    return-void
.end method

.method public setIsTextConvex(Z)V
    .locals 0
    .param p1, "isConvex"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mIsTextConvex:Z

    .line 69
    return-void
.end method

.method public setLayout(FF)V
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 77
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewWidth:F

    .line 78
    iput p2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewHeight:F

    .line 79
    return-void
.end method

.method public setTextBoundsHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsHeight:F

    .line 94
    return-void
.end method

.method public setTextBoundsWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTxtBoundsWidth:F

    .line 86
    return-void
.end method

.method public setTextOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 135
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextOffsetFromDefault:F

    .line 136
    return-void
.end method

.method public setTextTopPadding(F)V
    .locals 3
    .param p1, "padding"    # F

    .prologue
    .line 113
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTextTopPadding : mViewWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mViewHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mViewHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextOverlayImageView;->mTextTopPadding:F

    .line 115
    return-void
.end method
