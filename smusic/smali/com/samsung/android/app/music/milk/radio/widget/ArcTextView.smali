.class public Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;
.super Landroid/widget/TextView;
.source "ArcTextView.java"


# static fields
.field private static CLICK_THRESHOLD_DP:I

.field private static CLICK_THRESHOLD_PX:I

.field private static CLICK_TIME_THRESHOLD_MS:I


# instance fields
.field private mDial:Landroid/view/View;

.field private mDiscardClick:Z

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mIsTextConvex:Z

.field private mPaintText:Landroid/graphics/Paint;

.field private mPathText:Landroid/graphics/Path;

.field private mTextColor:I

.field private mTextOffset:F

.field private mTextOffsetFromDefault:F

.field private mTxtBoundsHeight:F

.field private mTxtBoundsWidth:F

.field private mTxtWidth:I

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0x14

    sput v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->CLICK_THRESHOLD_DP:I

    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->CLICK_THRESHOLD_PX:I

    .line 26
    const/16 v0, 0xc8

    sput v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->CLICK_TIME_THRESHOLD_MS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextColor:I

    .line 42
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPathText:Landroid/graphics/Path;

    .line 45
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextOffsetFromDefault:F

    .line 46
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextOffset:F

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mIsTextConvex:Z

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->initView(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextColor:I

    .line 42
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPathText:Landroid/graphics/Path;

    .line 45
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextOffsetFromDefault:F

    .line 46
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextOffset:F

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mIsTextConvex:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->initView(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/util/AttributeSet;
    .param p3, "arg2"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextColor:I

    .line 42
    iput-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPathText:Landroid/graphics/Path;

    .line 45
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextOffsetFromDefault:F

    .line 46
    iput v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextOffset:F

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mIsTextConvex:Z

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->initView(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method private calculateView()V
    .locals 14

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->isInEditMode()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 206
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getPaddingTop()I

    move-result v10

    add-int v8, v9, v10

    .line 171
    .local v8, "vertPadding":I
    int-to-float v9, v8

    div-float v2, v9, v13

    .line 174
    .local v2, "halfVertPadding":F
    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTxtBoundsWidth:F

    div-float/2addr v9, v13

    iget v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mViewWidth:I

    int-to-float v10, v10

    div-float/2addr v10, v13

    sub-float/2addr v9, v10

    neg-float v4, v9

    .line 175
    .local v4, "left":F
    iget-boolean v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mIsTextConvex:Z

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    add-float v7, v9, v2

    .line 176
    .local v7, "top":F
    :goto_1
    iget-boolean v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mIsTextConvex:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTxtBoundsHeight:F

    add-float v0, v9, v2

    .line 178
    .local v0, "bottom":F
    :goto_2
    new-instance v5, Landroid/graphics/RectF;

    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTxtBoundsWidth:F

    add-float/2addr v9, v4

    invoke-direct {v5, v4, v7, v9, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 180
    .local v5, "rectCircle":Landroid/graphics/RectF;
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->checkText()V

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->createPaintObjects()V

    .line 184
    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->createPathObjects(Landroid/graphics/RectF;)V

    .line 187
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 190
    .local v6, "rectText":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v9, v10, v11, v12, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 191
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    iput v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTxtWidth:I

    .line 193
    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mViewHeight:I

    sub-int v3, v9, v8

    .line 194
    .local v3, "intrinsicViewHeight":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    sub-int v9, v3, v9

    int-to-float v9, v9

    div-float v1, v9, v13

    .line 202
    .local v1, "centerVerticallyInView":F
    iget v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextOffsetFromDefault:F

    iget-boolean v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mIsTextConvex:Z

    if-eqz v9, :cond_3

    .line 204
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v1

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    sub-float/2addr v9, v11

    :goto_3
    add-float/2addr v9, v10

    iput v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextOffset:F

    goto :goto_0

    .line 175
    .end local v0    # "bottom":F
    .end local v1    # "centerVerticallyInView":F
    .end local v3    # "intrinsicViewHeight":I
    .end local v5    # "rectCircle":Landroid/graphics/RectF;
    .end local v6    # "rectText":Landroid/graphics/Rect;
    .end local v7    # "top":F
    :cond_1
    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTxtBoundsHeight:F

    iget v10, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mViewHeight:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    neg-float v9, v9

    sub-float v7, v9, v2

    goto :goto_1

    .line 176
    .restart local v7    # "top":F
    :cond_2
    iget v9, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mViewHeight:I

    int-to-float v9, v9

    sub-float v0, v9, v2

    goto :goto_2

    .line 204
    .restart local v0    # "bottom":F
    .restart local v1    # "centerVerticallyInView":F
    .restart local v3    # "intrinsicViewHeight":I
    .restart local v5    # "rectCircle":Landroid/graphics/RectF;
    .restart local v6    # "rectText":Landroid/graphics/Rect;
    :cond_3
    neg-float v9, v1

    iget v11, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    sub-float/2addr v9, v11

    goto :goto_3
.end method

.method private checkText()V
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    return-void
.end method

.method private createPaintObjects()V
    .locals 2

    .prologue
    .line 223
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getRadioTypefaceLato(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 230
    return-void
.end method

.method private createPathObjects(Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "rectCircle"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v1, 0x43340000    # 180.0f

    .line 237
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPathText:Landroid/graphics/Path;

    .line 238
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPathText:Landroid/graphics/Path;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mIsTextConvex:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, p1, v1, v0}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    .line 239
    return-void

    .line 238
    :cond_0
    const/high16 v0, -0x3ccc0000    # -180.0f

    goto :goto_0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 82
    sget v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->CLICK_THRESHOLD_DP:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->CLICK_THRESHOLD_PX:I

    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public getArcTextWidth()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTxtWidth:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPathText:Landroid/graphics/Path;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextOffset:F

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mPaintText:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 128
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mViewWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mViewHeight:I

    if-gtz v0, :cond_1

    .line 129
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mViewWidth:I

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mViewHeight:I

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getMeasuredWidthAndState()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getMeasuredHeightAndState()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 262
    const v6, 0x7f120029

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 264
    .local v3, "stationCursorIndex":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 265
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_2

    .line 266
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 299
    :cond_1
    :goto_0
    return v4

    .line 271
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 272
    .local v0, "action":I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_6

    .line 273
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDial:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 276
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDownX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->CLICK_THRESHOLD_PX:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v7, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDownY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sget v7, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->CLICK_THRESHOLD_PX:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    move v1, v4

    .line 280
    .local v1, "isOverSpacialThreshold":Z
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDownTime:J

    sub-long/2addr v6, v8

    sget v8, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->CLICK_TIME_THRESHOLD_MS:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_5

    move v2, v4

    .line 282
    .local v2, "isOverTemporalThreshold":Z
    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDiscardClick:Z

    if-nez v5, :cond_1

    if-nez v1, :cond_3

    if-eqz v2, :cond_1

    .line 283
    :cond_3
    iput-boolean v4, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDiscardClick:Z

    goto :goto_0

    .end local v1    # "isOverSpacialThreshold":Z
    .end local v2    # "isOverTemporalThreshold":Z
    :cond_4
    move v1, v5

    .line 277
    goto :goto_1

    .restart local v1    # "isOverSpacialThreshold":Z
    :cond_5
    move v2, v5

    .line 280
    goto :goto_2

    .line 285
    .end local v1    # "isOverSpacialThreshold":Z
    :cond_6
    if-nez v0, :cond_7

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDownX:F

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDownY:F

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDownTime:J

    .line 289
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDial:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 290
    :cond_7
    if-ne v0, v4, :cond_1

    .line 291
    iget-boolean v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDiscardClick:Z

    if-nez v6, :cond_8

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->performClick()Z

    .line 297
    :goto_3
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDiscardClick:Z

    goto :goto_0

    .line 294
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDial:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_3
.end method

.method public recalculateView()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->calculateView()V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->invalidate()V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->requestLayout()V

    .line 160
    return-void
.end method

.method public setArcText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->recalculateView()V

    .line 146
    return-void
.end method

.method public setArcTextColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTextColor:I

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->recalculateView()V

    .line 141
    return-void
.end method

.method public setDialTouchHandler(Landroid/view/View;)V
    .locals 0
    .param p1, "handler"    # Landroid/view/View;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mDial:Landroid/view/View;

    .line 258
    return-void
.end method

.method public setIsTextConvex(Z)V
    .locals 0
    .param p1, "isConvex"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mIsTextConvex:Z

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->recalculateView()V

    .line 98
    return-void
.end method

.method public setTextBoundsHeight(F)V
    .locals 0
    .param p1, "height"    # F

    .prologue
    .line 114
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTxtBoundsHeight:F

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->recalculateView()V

    .line 116
    return-void
.end method

.method public setTextBoundsWidth(F)V
    .locals 0
    .param p1, "width"    # F

    .prologue
    .line 105
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->mTxtBoundsWidth:F

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/widget/ArcTextView;->recalculateView()V

    .line 107
    return-void
.end method
