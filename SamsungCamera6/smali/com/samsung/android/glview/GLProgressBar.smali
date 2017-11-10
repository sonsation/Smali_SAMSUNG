.class public Lcom/samsung/android/glview/GLProgressBar;
.super Lcom/samsung/android/glview/GLView;
.source "GLProgressBar.java"


# static fields
.field private static final DEFAULT_PADDING:I = 0xa

.field private static final DEFAULT_TEXT_COLOR:I


# instance fields
.field private mFontsize:F

.field private mGL:Lcom/samsung/android/glview/GLContext;

.field private mHeight:F

.field private mMax:I

.field private mProgress:I

.field private mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

.field private mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

.field private mProgressBarHeight:F

.field private mProgressBarText:Lcom/samsung/android/glview/GLText;

.field private mTextinterval:I

.field private mWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/samsung/android/glview/R$color;->default_white_color:I

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/samsung/android/glview/GLProgressBar;->DEFAULT_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFIIIF)V
    .locals 11

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mFontsize:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    iput-object p1, p0, Lcom/samsung/android/glview/GLProgressBar;->mGL:Lcom/samsung/android/glview/GLContext;

    iput p4, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    move/from16 v0, p9

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    move/from16 v0, p10

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mFontsize:F

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    iget v4, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    iget v4, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    move-object v2, p1

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v3, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    add-int/lit8 v2, v2, -0xa

    int-to-float v5, v2

    iget v6, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " / "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/glview/GLProgressBar;->mFontsize:F

    sget v9, Lcom/samsung/android/glview/GLProgressBar;->DEFAULT_TEXT_COLOR:I

    const/4 v10, 0x1

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFFIIIIF)V
    .locals 11

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mFontsize:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    iput-object p1, p0, Lcom/samsung/android/glview/GLProgressBar;->mGL:Lcom/samsung/android/glview/GLContext;

    iput p4, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    move/from16 v0, p10

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    move/from16 v0, p11

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mFontsize:F

    move/from16 v0, p9

    int-to-float v1, v0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mAlpha:F

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    iget v4, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    iget v8, p0, Lcom/samsung/android/glview/GLProgressBar;->mAlpha:F

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    iget v4, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v2, v4

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v5, v5

    sub-float v5, v2, v5

    iget v6, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    iget v8, p0, Lcom/samsung/android/glview/GLProgressBar;->mAlpha:F

    move-object v2, p1

    move/from16 v7, p8

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    new-instance v1, Lcom/samsung/android/glview/GLText;

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v3, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x41200000    # 10.0f

    add-float/2addr v3, v2

    const/4 v4, 0x0

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    add-int/lit8 v2, v2, -0xa

    int-to-float v5, v2

    iget v6, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " / "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/glview/GLProgressBar;->mFontsize:F

    sget v9, Lcom/samsung/android/glview/GLProgressBar;->DEFAULT_TEXT_COLOR:I

    const/4 v10, 0x1

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFII)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    iput v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iput v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    iput v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mFontsize:F

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    iput-object p1, p0, Lcom/samsung/android/glview/GLProgressBar;->mGL:Lcom/samsung/android/glview/GLContext;

    iput p4, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iput p5, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget v4, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    move-object v1, p1

    move v3, v2

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v0, Lcom/samsung/android/glview/GLNinePatch;

    iget v4, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v5, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    move-object v1, p1

    move v3, v2

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFI)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLProgressBar;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/glview/GLContext;FFFFIII)V
    .locals 9

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/glview/GLView;-><init>(Lcom/samsung/android/glview/GLContext;FFFF)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mFontsize:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    iput-object p1, p0, Lcom/samsung/android/glview/GLProgressBar;->mGL:Lcom/samsung/android/glview/GLContext;

    iput p4, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iput p5, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    move/from16 v0, p8

    int-to-float v1, v0

    iput v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mAlpha:F

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    iget v8, p0, Lcom/samsung/android/glview/GLProgressBar;->mAlpha:F

    move-object v2, p1

    move v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    new-instance v1, Lcom/samsung/android/glview/GLNinePatch;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v6, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    iget v8, p0, Lcom/samsung/android/glview/GLProgressBar;->mAlpha:F

    move-object v2, p1

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/glview/GLNinePatch;-><init>(Lcom/samsung/android/glview/GLContext;FFFFIF)V

    iput-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/glview/GLProgressBar;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    iput-object p0, v0, Lcom/samsung/android/glview/GLNinePatch;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mGL:Lcom/samsung/android/glview/GLContext;

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    return v0
.end method

.method public initSize()V
    .locals 0

    return-void
.end method

.method public onAlphaUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onAlphaUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->onAlphaUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onAlphaUpdated()V

    :cond_2
    return-void
.end method

.method protected onDraw()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLProgressBar;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLProgressBar;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLProgressBar;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLProgressBar;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->draw([FLandroid/graphics/Rect;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLProgressBar;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/glview/GLProgressBar;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLText;->draw([FLandroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/glview/GLView;->onLayoutUpdated()V

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->onLayoutUpdated()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->onLayoutUpdated()V

    :cond_2
    return-void
.end method

.method protected onLoad()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLText;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v1}, Lcom/samsung/android/glview/GLNinePatch;->load()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method protected onReset()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLText;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLNinePatch;->reset()V

    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/glview/GLView;->onVisibilityChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->onVisibilityChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->onVisibilityChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->onVisibilityChanged(I)V

    :cond_2
    return-void
.end method

.method public setHeight(F)V
    .locals 0

    return-void
.end method

.method public setMax(I)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    iget v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    iget v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLText;->setText(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLNinePatch;->setVisibility(I)V

    goto :goto_0
.end method

.method public setShaderParameter(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->setShaderParameter(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->setShaderParameter(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setShaderParameter(F)V

    :cond_2
    return-void
.end method

.method public setShaderProgram(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->setShaderProgram(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->setShaderProgram(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setShaderProgram(I)V

    :cond_2
    return-void
.end method

.method public setShaderStep(F)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->setShaderStep(F)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLNinePatch;->setShaderStep(F)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    invoke-virtual {v0, p1}, Lcom/samsung/android/glview/GLText;->setShaderStep(F)V

    :cond_2
    return-void
.end method

.method public setSize(FF)V
    .locals 10

    const/4 v9, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/glview/GLView;->setSize(FF)V

    iput p1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iput p2, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    iget v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/glview/GLText;

    iget-object v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mGL:Lcom/samsung/android/glview/GLContext;

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v4, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v2, v4

    iget v4, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    add-int/lit8 v4, v4, -0xa

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/android/glview/GLProgressBar;->mHeight:F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/glview/GLProgressBar;->mMax:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/glview/GLProgressBar;->mFontsize:F

    sget v8, Lcom/samsung/android/glview/GLProgressBar;->DEFAULT_TEXT_COLOR:I

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/glview/GLText;-><init>(Lcom/samsung/android/glview/GLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v9, v1}, Lcom/samsung/android/glview/GLText;->setAlign(II)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarText:Lcom/samsung/android/glview/GLText;

    iput-object p0, v0, Lcom/samsung/android/glview/GLText;->mParent:Lcom/samsung/android/glview/GLView;

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    iget v1, p0, Lcom/samsung/android/glview/GLProgressBar;->mWidth:F

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mTextinterval:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarGauge:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget-object v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgressBarBg:Lcom/samsung/android/glview/GLNinePatch;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/glview/GLNinePatch;->setSize(FF)V

    iget v0, p0, Lcom/samsung/android/glview/GLProgressBar;->mProgress:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/glview/GLProgressBar;->setProgress(I)V

    goto :goto_1
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    return-void
.end method
