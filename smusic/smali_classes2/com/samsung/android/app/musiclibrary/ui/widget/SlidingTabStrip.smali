.class public final Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "SlidingTabStrip.java"


# instance fields
.field private mIndicator:Landroid/graphics/drawable/Drawable;

.field private mIsIndicatorEnabled:Z

.field private mSelectedPosition:I

.field private mSelectionOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mIsIndicatorEnabled:Z

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->setWillNotDraw(Z)V

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->initialize()V

    .line 48
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$drawable;->tab_indicator_selected:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 52
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getHeight()I

    move-result v1

    .line 77
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v0

    .line 80
    .local v0, "childCount":I
    if-lez v0, :cond_1

    .line 81
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 82
    .local v5, "selectedTitle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 83
    .local v2, "left":I
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v4

    .line 85
    .local v4, "right":I
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mSelectionOffset:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_0

    .line 87
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 88
    .local v3, "nextTitle":Landroid/view/View;
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mSelectionOffset:F

    sub-float v7, v9, v7

    int-to-float v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v2, v6

    .line 90
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mSelectionOffset:F

    sub-float v7, v9, v7

    int-to-float v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v4, v6

    .line 94
    .end local v3    # "nextTitle":Landroid/view/View;
    :cond_0
    iget-boolean v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mIsIndicatorEnabled:Z

    if-eqz v6, :cond_1

    .line 95
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 99
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v5    # "selectedTitle":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onViewPagerPageChanged(IF)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mSelectedPosition:I

    .line 70
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mSelectionOffset:F

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->invalidate()V

    .line 72
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->invalidate()V

    .line 57
    return-void
.end method

.method public setIndicatorColorResource(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mIndicator:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 62
    return-void
.end method

.method public setIndicatorEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->mIsIndicatorEnabled:Z

    .line 66
    return-void
.end method
