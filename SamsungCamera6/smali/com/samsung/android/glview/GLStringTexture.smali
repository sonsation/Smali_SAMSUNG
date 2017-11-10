.class public Lcom/samsung/android/glview/GLStringTexture;
.super Lcom/samsung/android/glview/GLTexture;
.source "GLStringTexture.java"


# static fields
.field private static final DEFAULT_FADING_EDGE_WIDTH_DIP:F = 20.0f

.field private static DEFAULT_LINE_SPACE:I = 0x0

.field private static DEFAULT_PADDING:I = 0x0

.field private static final DEFAULT_SHADOW_COLOR:I

.field private static final DEFAULT_SHADOW_OFFSET_X_DIP:F = 1.0f

.field private static final DEFAULT_SHADOW_OFFSET_Y_DIP:F = 1.0f

.field private static final DEFAULT_SHADOW_RADIUS_DIP:F = 1.0f

.field private static final DEFAULT_STROKE_COLOR:I

.field private static final DEFAULT_STROKE_WIDTH:F = 1.0f

.field private static final DEFAULT_TEXT_COLOR:I

.field private static NUM_OF_ELLIPSIS_CHARACTER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLStringTexture"


# instance fields
.field private mBold:Z

.field private mColor:I

.field private mFadingEdge:Z

.field private mFadingEdgeWidth:F

.field private mHAlign:I

.field private mHeight:I

.field private mLineSpace:I

.field private mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mPaint:Landroid/graphics/Paint;

.field private mShadow:Z

.field private mShadowColor:I

.field private mShadowOffsetX:F

.field private mShadowOffsetY:F

.field private mShadowRadius:F

.field private mSize:F

.field private mStringHeight:I

.field private mStringWidth:I

.field private mStroke:Z

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mText:Ljava/lang/String;

.field private mVAlign:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/samsung/android/glview/R$color;->default_text_color:I

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_TEXT_COLOR:I

    sget v0, Lcom/samsung/android/glview/R$color;->default_black_color:I

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_SHADOW_COLOR:I

    sget v0, Lcom/samsung/android/glview/R$color;->default_black_color:I

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_STROKE_COLOR:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_LINE_SPACE:I

    const/4 v0, 0x3

    sput v0, Lcom/samsung/android/glview/GLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIILjava/lang/String;FIZ)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    iput v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    iput v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    iput v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    iput v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mHAlign:I

    iput v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mVAlign:I

    sget v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_TEXT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mBold:Z

    iput v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mSize:F

    iput v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdgeWidth:F

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdge:Z

    sget v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_SHADOW_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    sget v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_STROKE_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    sget v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_LINE_SPACE:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mLineSpace:I

    iput-object p8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iput p9, p0, Lcom/samsung/android/glview/GLStringTexture;->mSize:F

    iput p10, p0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    iput-boolean p11, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    iput p6, p0, Lcom/samsung/android/glview/GLStringTexture;->mHAlign:I

    iput p7, p0, Lcom/samsung/android/glview/GLStringTexture;->mVAlign:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    cmpl-float v0, p9, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p9}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p10}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    float-to-int v0, p4

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    float-to-int v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    if-gtz v0, :cond_2

    :cond_1
    const-string v0, "GLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mSizeSpecified:Z

    invoke-direct {p0}, Lcom/samsung/android/glview/GLStringTexture;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFLjava/lang/String;FIZ)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/glview/GLTexture;-><init>(Lcom/samsung/android/glview/GLContext;FF)V

    iput v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    iput v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    iput v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    iput v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    iput v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mHAlign:I

    iput v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mVAlign:I

    sget v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_TEXT_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    iput-boolean v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mBold:Z

    iput v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mSize:F

    iput v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdgeWidth:F

    iput-boolean v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdge:Z

    sget v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_SHADOW_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    sget v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_STROKE_COLOR:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    sget v0, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_LINE_SPACE:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mLineSpace:I

    iput-object p4, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iput p5, p0, Lcom/samsung/android/glview/GLStringTexture;->mSize:F

    iput p6, p0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    iput-boolean p7, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    cmpl-float v0, p5, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    if-gtz v0, :cond_2

    :cond_1
    const-string v0, "GLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mSizeSpecified:Z

    invoke-direct {p0}, Lcom/samsung/android/glview/GLStringTexture;->init()V

    return-void
.end method

.method private getBreakIndex(Ljava/lang/String;I)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    const/4 v2, 0x0

    if-ge v1, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    return v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    if-gt v1, p2, :cond_0

    move v3, v0

    goto :goto_0
.end method

.method private getDynamicHeight()I
    .locals 12

    const/4 v11, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    const-string v9, " "

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v11, :cond_2

    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    :goto_0
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v11, :cond_3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v1, 0x1

    add-int/2addr v4, v8

    :cond_1
    :goto_1
    if-eqz v2, :cond_0

    iget v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    mul-int/2addr v8, v3

    iget v9, p0, Lcom/samsung/android/glview/GLStringTexture;->mLineSpace:I

    add-int/lit8 v10, v3, -0x1

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    return v8

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-le v5, v8, :cond_8

    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v0, v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    const-string v9, " "

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v11, :cond_4

    add-int/lit8 v8, v0, 0x1

    if-lt v4, v8, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/glview/GLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v8

    add-int v0, v4, v8

    add-int/lit8 v0, v0, -0x1

    :cond_5
    :goto_2
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v7, v0

    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    const-string v9, " "

    add-int/lit8 v10, v0, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v11, :cond_7

    add-int/lit8 v8, v0, 0x1

    if-lt v4, v8, :cond_5

    :cond_7
    move v0, v7

    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/glview/GLStringTexture;->getBreakIndex(Ljava/lang/String;I)I

    move-result v8

    add-int v0, v4, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    iget-object v8, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v0, v8, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method private getNumOfNewLineChar(Ljava/lang/String;)I
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-eq v1, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-ne v1, v4, :cond_0

    return v0
.end method

.method private init()V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetY:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->getContext()Lcom/samsung/android/glview/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdgeWidth:F

    return-void
.end method

.method private insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/samsung/android/glview/GLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    sub-int v1, v5, v6

    const/4 v4, 0x0

    const-string v0, ""

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-lt v5, p2, :cond_0

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sget v5, Lcom/samsung/android/glview/GLStringTexture;->NUM_OF_ELLIPSIS_CHARACTER:I

    if-ge v2, v5, :cond_2

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-lt v5, p2, :cond_3

    move-object p1, v0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    add-int/lit8 v1, v1, -0x1

    if-lt p2, v4, :cond_3

    move-object p1, v3

    goto :goto_0
.end method

.method private isFadingNeeded(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    int-to-double v2, p2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private wordBreak(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/samsung/android/glview/GLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x0

    add-int/lit8 v10, v3, 0x1

    if-ne p1, v10, :cond_3

    :cond_0
    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    const/16 v11, 0xa

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_1

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v0, 0x1

    :cond_1
    const/4 v10, -0x1

    if-ne v0, v10, :cond_0

    iget-boolean v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdge:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v4

    :cond_2
    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/glview/GLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    const/4 v0, 0x0

    :cond_4
    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, 0x1

    invoke-static {v10, v11}, Lcom/samsung/android/glview/GLText;->getIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_a

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_5

    add-int/lit8 v0, v0, -0x1

    :cond_5
    :goto_1
    const/16 v10, 0xa

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_6

    add-int v0, v6, v1

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    :cond_6
    iget v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-le v7, v10, :cond_17

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_10

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Lcom/samsung/android/glview/GLText;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_7

    add-int/lit8 v10, v0, 0x1

    if-lt v6, v10, :cond_d

    :cond_7
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_b

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v12, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Lcom/samsung/android/glview/GLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v10

    add-int v0, v6, v10

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    :cond_8
    :goto_2
    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    :cond_9
    :goto_3
    if-eqz v2, :cond_4

    goto/16 :goto_0

    :cond_a
    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v7, v10

    goto :goto_1

    :cond_b
    iget-boolean v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdge:Z

    if-eqz v10, :cond_c

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    const/4 v2, 0x1

    goto :goto_2

    :cond_c
    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/glview/GLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    add-int/lit8 v10, v0, 0x1

    if-eq v6, v10, :cond_8

    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_e

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_8

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_e
    iget-boolean v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdge:Z

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_f
    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/glview/GLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_10
    move v9, v0

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    add-int/lit8 v11, v0, -0x1

    invoke-static {v10, v11}, Lcom/samsung/android/glview/GLText;->getLastIndexOfDelimiters(Ljava/lang/String;I)I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_11

    add-int/lit8 v10, v0, 0x1

    if-lt v6, v10, :cond_14

    :cond_11
    move v0, v9

    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_12

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Lcom/samsung/android/glview/GLText;->getBreakIndex(Landroid/graphics/Paint;Ljava/lang/String;F)I

    move-result v10

    add-int v0, v6, v10

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    :cond_12
    iget-boolean v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdge:Z

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_13
    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/glview/GLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    add-int/lit8 v10, v5, 0x1

    if-le p1, v10, :cond_15

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_8

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_2

    :cond_15
    iget-boolean v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdge:Z

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_16
    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/glview/GLStringTexture;->insertEllipsis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_17
    const/4 v10, -0x1

    if-eq v1, v10, :cond_18

    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    add-int v11, v6, v1

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v1, 0x1

    add-int/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_18
    iget-object v10, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v0, v10, :cond_9

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public getAvailableRows()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getStringHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    return v0
.end method

.method public getStringWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized loadBitmap()Landroid/graphics/Bitmap;
    .locals 21

    monitor-enter p0

    const/16 v18, 0x0

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mBold:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowColor:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    if-gtz v3, :cond_2

    :cond_1
    const-string v3, "GLStringTexture"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadBitmap - mWidth : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mHeight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    if-lt v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/glview/GLStringTexture;->getNumOfNewLineChar(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_11

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/glview/GLStringTexture;->getAvailableRows()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/glview/GLStringTexture;->wordBreak(I)Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    mul-int/2addr v3, v4

    sget v4, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_LINE_SPACE:I

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v4, v5

    add-int v20, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    sub-int v3, v3, v20

    div-int/lit8 v19, v3, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int v15, v3, v4

    const/4 v12, 0x0

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    if-ge v12, v3, :cond_12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mVAlign:I

    packed-switch v3, :pswitch_data_0

    :goto_1
    const/4 v13, 0x0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v12, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdge:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/glview/GLStringTexture;->isFadingNeeded(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdgeWidth:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    if-eqz v7, :cond_8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    :goto_2
    const/high16 v8, -0x1000000

    or-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    if-eqz v8, :cond_9

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    :goto_3
    const v9, 0xffffff

    and-int/2addr v8, v9

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->clearShadowLayer()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 v13, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mHAlign:I

    packed-switch v3, :pswitch_data_1

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :pswitch_0
    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    mul-int/2addr v3, v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v18, v0

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    mul-int/2addr v3, v12

    sget v4, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v5, v12, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v18, v0

    goto/16 :goto_1

    :pswitch_1
    sget v3, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_LINE_SPACE:I

    if-le v15, v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    mul-int/2addr v3, v12

    add-int v3, v3, v19

    sget v4, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_LINE_SPACE:I

    mul-int/2addr v4, v12

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v18, v0

    goto/16 :goto_1

    :cond_6
    add-int/lit8 v3, v12, 0x1

    mul-int/2addr v3, v15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    mul-int/2addr v4, v12

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v18, v0

    goto/16 :goto_1

    :pswitch_2
    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v12

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v3, v4

    sget v4, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v18, v0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v12

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    sget v4, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_LINE_SPACE:I

    add-int/lit8 v5, v12, -0x1

    mul-int/2addr v4, v5

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v3, v4

    sget v4, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v18, v0

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    sget v3, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float v14, v3, v4

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v14, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v13, :cond_a

    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdgeWidth:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    const/high16 v8, -0x1000000

    or-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    const v9, 0xffffff

    and-int/2addr v8, v9

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_a
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v14, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_b
    :try_start_1
    sget v3, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    int-to-float v14, v3

    goto/16 :goto_5

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    sget v5, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    if-ge v4, v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    sget v3, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float v14, v3, v4

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v14, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v13, :cond_c

    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdgeWidth:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    const/high16 v8, -0x1000000

    or-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    const v9, 0xffffff

    and-int/2addr v8, v9

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_c
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v14, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_d
    sget v3, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    int-to-float v14, v3

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v14, v3, v4

    goto/16 :goto_6

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    sget v4, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    add-float/2addr v4, v5

    sub-float v14, v3, v4

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v14, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz v13, :cond_f

    new-instance v2, Landroid/graphics/LinearGradient;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdgeWidth:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    const/high16 v8, -0x1000000

    or-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    const v9, 0xffffff

    and-int/2addr v8, v9

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_f
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v14, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    sget v4, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v14, v3

    goto/16 :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mVAlign:I

    packed-switch v3, :pswitch_data_2

    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mHAlign:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v3, :pswitch_data_3

    :cond_12
    :goto_9
    monitor-exit p0

    return-object v10

    :pswitch_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v3, v3

    int-to-float v0, v3

    move/from16 v18, v0

    goto :goto_8

    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v18, v0

    goto :goto_8

    :pswitch_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v18, v0

    goto :goto_8

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_14

    sget v3, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float v14, v3, v4

    :goto_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v14, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v14, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_14
    sget v3, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    int-to-float v14, v3

    goto :goto_a

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v4, v0, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    sget v4, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    add-float/2addr v4, v5

    sub-float v14, v3, v4

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v14, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    invoke-virtual {v11, v3, v14, v0, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    sget v4, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v3, v4

    int-to-float v14, v3

    goto :goto_b

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public declared-synchronized setAlign(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mHAlign:I

    iput p2, p0, Lcom/samsung/android/glview/GLStringTexture;->mVAlign:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBold(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mBold:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBoldColor(ZI)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mBold:Z

    iput p2, p0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setColor(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDynamicHeight(F)V
    .locals 3

    monitor-enter p0

    float-to-int v0, p1

    :try_start_0
    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-direct {p0}, Lcom/samsung/android/glview/GLStringTexture;->getDynamicHeight()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "GLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDynamicHeight - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    int-to-float v0, v0

    invoke-super {p0, p1, v0}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setFadingEdge(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdge:Z

    return-void
.end method

.method public setFadingEdgeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mFadingEdgeWidth:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    return-void
.end method

.method public declared-synchronized setFontSize(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mSize:F

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "GLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFontSize - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHeight(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLTexture;->setHeight(F)V

    float-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    if-gtz v0, :cond_0

    const-string v0, "GLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeight - mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLayout(II)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHAlign:I

    :goto_0
    packed-switch p2, :pswitch_data_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mVAlign:I

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    return-void

    :pswitch_0
    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mHAlign:I

    goto :goto_0

    :pswitch_1
    iput p2, p0, Lcom/samsung/android/glview/GLStringTexture;->mVAlign:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setLineSpace(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mLineSpace:I

    return-void
.end method

.method public setShadowColor(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowColor:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    :cond_0
    return-void
.end method

.method public setShadowLayer(ZFFFI)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    const/4 v0, 0x1

    :cond_0
    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    invoke-static {v1, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iput p2, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    const/4 v0, 0x1

    :cond_1
    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    invoke-static {v1, p3}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_2

    iput p3, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    const/4 v0, 0x1

    :cond_2
    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetY:F

    invoke-static {v1, p4}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_3

    iput p4, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetY:F

    const/4 v0, 0x1

    :cond_3
    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowColor:I

    if-eq v1, p5, :cond_4

    iput p5, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowColor:I

    const/4 v0, 0x1

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    :cond_5
    return-void
.end method

.method public setShadowOffset(FF)V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    invoke-static {v1, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetX:F

    const/4 v0, 0x1

    :cond_0
    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetY:F

    invoke-static {v1, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iput p2, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowOffsetY:F

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    :cond_2
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    invoke-static {v0, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadowRadius:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    :cond_0
    return-void
.end method

.method public setShadowVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mShadow:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    return-void
.end method

.method public declared-synchronized setSize(FF)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    float-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    float-to-int v0, p2

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "GLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSize - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStroke(ZFI)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    const/4 v0, 0x1

    :cond_0
    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    invoke-static {v1, p2}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_1

    iput p2, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    const/4 v0, 0x1

    :cond_1
    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    if-eq v1, p3, :cond_2

    iput p3, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    :cond_3
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeColor:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    :cond_0
    return-void
.end method

.method public setStrokeVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStroke:Z

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    invoke-static {v0, p1}, Lcom/samsung/android/glview/GLUtil;->floatEquals(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mStrokeWidth:F

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z

    :cond_0
    return-void
.end method

.method public declared-synchronized setText(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->getSizeGiven()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-gtz v0, :cond_0

    const-string v0, "GLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setText - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    int-to-float v1, v1

    invoke-super {p0, v0, v1}, Lcom/samsung/android/glview/GLTexture;->setSize(FF)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setText(Ljava/lang/String;FI)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/glview/GLStringTexture;->mSize:F

    iput p3, p0, Lcom/samsung/android/glview/GLStringTexture;->mColor:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sget v1, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v1, p0, Lcom/samsung/android/glview/GLStringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v1

    sget v1, Lcom/samsung/android/glview/GLStringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->getSizeSpecified()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringWidth:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mStringHeight:I

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "GLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setText - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTextScaleX(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextScaleX(F)V

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWidth(F)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLTexture;->setWidth(F)V

    float-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    iget v0, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    if-gtz v0, :cond_0

    const-string v0, "GLStringTexture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWidth - mWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLStringTexture;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/glview/GLStringTexture;->reLoad()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
