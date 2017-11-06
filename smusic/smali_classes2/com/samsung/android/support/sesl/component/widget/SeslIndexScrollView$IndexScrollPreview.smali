.class Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;
.super Landroid/view/View;
.source "SeslIndexScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndexScrollPreview"
.end annotation


# instance fields
.field private mIsOpen:Z

.field private mPreviewCenterMargin:F

.field private mPreviewCenterX:F

.field private mPreviewCenterY:F

.field private mPreviewRadius:F

.field private mPreviewText:Ljava/lang/String;

.field private mShapePaint:Landroid/graphics/Paint;

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1714
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    .line 1715
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1708
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    .line 1716
    invoke-direct {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->init(Landroid/content/Context;)V

    .line 1717
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1724
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1726
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    .line 1727
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1728
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1730
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    .line 1731
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1732
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1733
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1734
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    sget v2, Lcom/samsung/android/support/sesl/R$dimen;->sesl_index_scroll_preview_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1735
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    sget v2, Lcom/samsung/android/support/sesl/R$color;->sesl_index_scroll_preview_text_color_light:I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/support/sesl/core/content/res/SeslResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1737
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextBounds:Landroid/graphics/Rect;

    .line 1739
    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_index_scroll_preview_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewRadius:F

    .line 1740
    sget v1, Lcom/samsung/android/support/sesl/R$dimen;->sesl_index_scroll_preview_margin_center:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterMargin:F

    .line 1742
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    .line 1743
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1797
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 1798
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->startAnimation()V

    .line 1799
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    .line 1801
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1827
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1828
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    if-eqz v1, :cond_0

    .line 1829
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterY:F

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewRadius:F

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1831
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1832
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterY:F

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    .line 1833
    .local v0, "textY":F
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1835
    .end local v0    # "textY":F
    :cond_0
    return-void
.end method

.method public open(FLjava/lang/String;)V
    .locals 1
    .param p1, "y"    # F
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1784
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterY:F

    .line 1785
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewText:Ljava/lang/String;

    .line 1787
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 1788
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->startAnimation()V

    .line 1789
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    .line 1791
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "bgColor"    # I

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mShapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1768
    return-void
.end method

.method public setLayout(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1754
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->layout(IIII)V

    .line 1755
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1756
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterMargin:F

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    .line 1760
    :goto_0
    return-void

    .line 1758
    :cond_0
    int-to-float v0, p3

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterMargin:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mPreviewCenterX:F

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "txtColor"    # I

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1776
    return-void
.end method

.method public startAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1809
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->mIsOpen:Z

    if-nez v2, :cond_0

    .line 1810
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v2

    const-string v3, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1815
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    :goto_0
    const-wide/16 v2, 0xa7

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1816
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1817
    .local v1, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1818
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 1819
    return-void

    .line 1812
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v1    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView;)Lcom/samsung/android/support/sesl/component/widget/SeslIndexScrollView$IndexScrollPreview;

    move-result-object v2

    const-string v3, "alpha"

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    goto :goto_0

    .line 1810
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1812
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
