.class Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;
.super Landroid/view/View;
.source "TwLangIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexRectangleTextView"
.end annotation


# static fields
.field public static final DARK_THEME:I = 0x0

.field public static final LIGHT_THEME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndexRectangleTextView"


# instance fields
.field private final debug:Z

.field private mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

.field private mIndexRectHeight:I

.field private mIndexRectPos:Landroid/graphics/Rect;

.field private mIndexRectText:Ljava/lang/String;

.field private mIndexRectTextColor:I

.field private mIndexRectTextColorDimmed:I

.field private mIndexRectTextSize:I

.field private mIndexRectTextSize3LettersMore:I

.field private mIndexRectWidth:I

.field private mIndexRectXOffset:I

.field private mIsFavoriteText:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mRectViewTheme:I

.field private mRes:Landroid/content/res/Resources;

.field private mStartTextPositionX:F

.field private mStartTextPositionY:F

.field private mTextWidth:F

.field private m_bColorAll:Z

.field final synthetic this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 4224
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 4225
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4116
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->debug:Z

    .line 4138
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    .line 4217
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    .line 4226
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->init(Landroid/content/Context;)V

    .line 4227
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "theme"    # I

    .prologue
    const/4 v0, 0x0

    .line 4235
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 4236
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4116
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->debug:Z

    .line 4138
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    .line 4217
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    .line 4237
    iput p3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    .line 4238
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->init(Landroid/content/Context;)V

    .line 4239
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 4247
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 4248
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4116
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->debug:Z

    .line 4138
    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    .line 4217
    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    .line 4249
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->init(Landroid/content/Context;)V

    .line 4250
    return-void
.end method

.method private drawIndexRectTextLTR(Landroid/graphics/Canvas;FZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dimmedTextWidth"    # F
    .param p3, "bReshapingLanguage"    # Z

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 4606
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4608
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    if-eqz v0, :cond_0

    .line 4612
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    .line 4613
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 4615
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4616
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 4638
    :goto_0
    return-void

    .line 4621
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 4623
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4625
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 4628
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4630
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 4631
    if-eqz p3, :cond_1

    .line 4632
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    const/high16 v1, 0x41200000    # 10.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 4635
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    .line 4636
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 4635
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawIndexRectTextRTL(Landroid/graphics/Canvas;FZ)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dimmedTextWidth"    # F
    .param p3, "bReshapingLanguage"    # Z

    .prologue
    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 4652
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4654
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    if-eqz v0, :cond_0

    .line 4658
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    .line 4659
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 4661
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4662
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 4684
    :goto_0
    return-void

    .line 4667
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 4669
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4671
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 4674
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4676
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 4677
    if-eqz p3, :cond_1

    .line 4678
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    const/high16 v1, 0x41200000    # 10.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    .line 4681
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    .line 4682
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionX:F

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 4681
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawIndexRectangle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4590
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 4591
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4593
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4594
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    .line 4261
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setTheme(I)V

    .line 4264
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4265
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010433

    invoke-virtual {v1, v2, v0, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4266
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2002(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;I)I

    .line 4268
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    if-nez v1, :cond_1

    .line 4269
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_popup_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    .line 4270
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_popup_text_color_dimmed:I

    .line 4271
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    .line 4283
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_index_textsize:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize:I

    .line 4284
    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize:I

    int-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize3LettersMore:I

    .line 4287
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setIndexRectHeight()V

    .line 4288
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    .line 4290
    iput-boolean v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    .line 4293
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    .line 4294
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4295
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4299
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1700()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_0

    .line 4300
    const-string/jumbo v1, "sec-roboto-light"

    .line 4301
    invoke-static {v1, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 4300
    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1702(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4303
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$1700()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4305
    return-void

    .line 4277
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    .line 4279
    iget-object v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v2, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_popup_text_color_dimmed_light:I

    .line 4280
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    goto :goto_0
.end method

.method private initIndexRectPos(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 4391
    div-int/lit8 v4, p1, 0x2

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 4392
    .local v1, "left":I
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    add-int v2, v1, v4

    .line 4394
    .local v2, "right":I
    div-int/lit8 v4, p2, 0x2

    iget v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 4395
    .local v3, "top":I
    iget v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectHeight:I

    add-int v0, v3, v4

    .line 4396
    .local v0, "bottom":I
    iget-object v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 4397
    return-void
.end method

.method private setIndexRectHeight()V
    .locals 2

    .prologue
    .line 4366
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_rectangle_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectHeight:I

    .line 4367
    return-void
.end method

.method private setIndexRectWidth()V
    .locals 8

    .prologue
    .line 4315
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 4317
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 4319
    .local v1, "length":I
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v2, v6

    .line 4321
    .local v2, "measureTextWidth":I
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v7, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_rectangle_characters_width_padding:I

    .line 4322
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 4325
    .local v0, "charWidthPadding":I
    packed-switch v1, :pswitch_data_0

    .line 4349
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v7, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_rectangle_width_two_letter:I

    .line 4350
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    .line 4351
    .local v5, "twoLettersWidth":I
    add-int v3, v0, v2

    .line 4352
    .local v3, "moreThanTwoLettersWidth":I
    if-ge v3, v5, :cond_2

    .end local v5    # "twoLettersWidth":I
    :goto_0
    iput v5, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    .line 4359
    .end local v0    # "charWidthPadding":I
    .end local v1    # "length":I
    .end local v2    # "measureTextWidth":I
    .end local v3    # "moreThanTwoLettersWidth":I
    :cond_0
    :goto_1
    return-void

    .line 4328
    .restart local v0    # "charWidthPadding":I
    .restart local v1    # "length":I
    .restart local v2    # "measureTextWidth":I
    :pswitch_0
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v7, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_rectangle_width_one_letter:I

    .line 4329
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v4, v6

    .line 4331
    .local v4, "oneLetterRectSize":I
    div-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v2

    if-le v6, v4, :cond_1

    .line 4332
    add-int v6, v2, v0

    iput v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    goto :goto_1

    .line 4334
    :cond_1
    iput v4, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    goto :goto_1

    .line 4339
    .end local v4    # "oneLetterRectSize":I
    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v7, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_rectangle_width_two_letter:I

    .line 4340
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    goto :goto_1

    .restart local v3    # "moreThanTwoLettersWidth":I
    .restart local v5    # "twoLettersWidth":I
    :cond_2
    move v5, v3

    .line 4352
    goto :goto_0

    .line 4325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isColorAll()Z
    .locals 1

    .prologue
    .line 4471
    iget-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 4484
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->getWidth()I

    move-result v20

    .line 4485
    .local v20, "viewWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->getHeight()I

    move-result v19

    .line 4488
    .local v19, "viewHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectWidth:I

    move/from16 v0, v20

    if-le v3, v0, :cond_1

    .line 4581
    :cond_0
    :goto_0
    return-void

    .line 4491
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 4496
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->initIndexRectPos(II)V

    .line 4498
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->drawIndexRectangle(Landroid/graphics/Canvas;)V

    .line 4505
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 4507
    .local v11, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v4, v5, v6, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 4508
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v12, v3

    .line 4510
    .local v12, "dimmedColorTextWidth":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    .line 4511
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 4510
    invoke-virtual {v3, v4, v5, v6, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 4512
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v15, v3

    .line 4515
    .local v15, "lastColorTextWidth":F
    add-float v3, v12, v15

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    .line 4517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 4518
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v14, v3

    .line 4520
    .local v14, "fullLen":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    cmpg-float v3, v14, v3

    if-gez v3, :cond_2

    .line 4521
    const/4 v10, 0x1

    .line 4522
    .local v10, "bReshapingLanguage":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    .line 4533
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    .line 4534
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    .line 4535
    .local v16, "rectCenterX":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    .line 4536
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    .line 4537
    .local v17, "rectCenterY":I
    new-instance v13, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v13}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 4538
    .local v13, "fm":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 4540
    move/from16 v0, v17

    int-to-float v3, v0

    iget v4, v13, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v5, v13, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v4, v5

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    .line 4543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    if-nez v3, :cond_4

    .line 4547
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$4100(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4549
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->drawIndexRectTextRTL(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_0

    .line 4524
    .end local v10    # "bReshapingLanguage":Z
    .end local v13    # "fm":Landroid/graphics/Paint$FontMetrics;
    .end local v16    # "rectCenterX":I
    .end local v17    # "rectCenterY":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    .line 4525
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v12

    .line 4526
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    .line 4527
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .line 4526
    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v15

    .line 4528
    add-float v3, v12, v15

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mTextWidth:F

    .line 4529
    const/4 v10, 0x0

    .restart local v10    # "bReshapingLanguage":Z
    goto/16 :goto_1

    .line 4552
    .restart local v13    # "fm":Landroid/graphics/Paint$FontMetrics;
    .restart local v16    # "rectCenterX":I
    .restart local v17    # "rectCenterY":I
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v10}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->drawIndexRectTextLTR(Landroid/graphics/Canvas;FZ)V

    goto/16 :goto_0

    .line 4558
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 4561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4563
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    .line 4564
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 4565
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_index_textsize:I

    .line 4566
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 4568
    .local v18, "scaledPx":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v18, v18, v4

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectPos:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0xa

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_5

    .line 4572
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 4574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/app/music/support/sdl/R$dimen;->tw_indexview_index_textsize:I

    .line 4575
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 4574
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0

    .line 4577
    .end local v18    # "scaledPx":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, v16

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mStartTextPositionY:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public setColorAll(Z)V
    .locals 0
    .param p1, "bColorAll"    # Z

    .prologue
    .line 4462
    iput-boolean p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->m_bColorAll:Z

    .line 4463
    return-void
.end method

.method public setIndexRectText(Ljava/lang/String;)V
    .locals 3
    .param p1, "indexRectText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 4443
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    .line 4444
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2606

    if-ne v0, v1, :cond_0

    .line 4445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    .line 4446
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/music/support/sdl/R$string;->tw_index_scroll_favorites:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectText:Ljava/lang/String;

    .line 4447
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize3LettersMore:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4453
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->setIndexRectWidth()V

    .line 4454
    return-void

    .line 4449
    :cond_0
    iput-boolean v2, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIsFavoriteText:Z

    .line 4450
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 4406
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    if-eq v0, p1, :cond_0

    .line 4407
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    .line 4411
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRectViewTheme:I

    if-nez v0, :cond_2

    .line 4412
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scroll_popup_bg_holo_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 4413
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_popup_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    .line 4414
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_popup_text_color_dimmed:I

    .line 4415
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    .line 4429
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2200(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4430
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    .line 4431
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$4000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$4000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 4434
    :cond_1
    return-void

    .line 4417
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/music/support/sdl/R$drawable;->tw_scroll_popup_bg_mtrl:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    .line 4422
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->this$0:Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;->access$2000(Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColor:I

    .line 4424
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mRes:Landroid/content/res/Resources;

    sget v1, Lcom/samsung/android/app/music/support/sdl/R$color;->tw_index_scroll_popup_text_color_dimmed_light:I

    .line 4425
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mIndexRectTextColorDimmed:I

    goto :goto_0

    .line 4431
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwLangIndexScrollView$IndexRectangleTextView;->mBgIndexRectDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
