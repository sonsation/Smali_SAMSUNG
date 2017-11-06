.class public Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;
.super Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;
.source "GridViewPager.java"


# static fields
.field public static final DEFAULT_COLUMN:I = 0x1

.field public static final DEFAULT_COLUMN_SPACE:I = 0x0

.field public static final DEFAULT_ROW:I = 0x1

.field public static final DEFAULT_ROW_SPACE:I


# instance fields
.field protected mColumn:I

.field protected mColumnSpace:I

.field protected mRow:I

.field protected mRowSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    if-eqz p2, :cond_0

    .line 29
    sget-object v3, Lcom/samsung/android/app/music/R$styleable;->MilkGridViewPager:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 31
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->mColumn:I

    .line 32
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->mRow:I

    .line 34
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 35
    .local v1, "columnSpaceDimen":F
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 37
    .local v2, "rowSpaceDimen":F
    cmpl-float v3, v1, v4

    if-nez v3, :cond_1

    .line 38
    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->mColumnSpace:I

    .line 43
    :goto_0
    cmpl-float v3, v2, v4

    if-nez v3, :cond_2

    .line 44
    iput v5, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->mRowSpace:I

    .line 49
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v1    # "columnSpaceDimen":F
    .end local v2    # "rowSpaceDimen":F
    :cond_0
    return-void

    .line 40
    .restart local v0    # "array":Landroid/content/res/TypedArray;
    .restart local v1    # "columnSpaceDimen":F
    .restart local v2    # "rowSpaceDimen":F
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->dimenToRoundedPx(F)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->mColumnSpace:I

    goto :goto_0

    .line 46
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->dimenToRoundedPx(F)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->mRowSpace:I

    goto :goto_1
.end method

.method public static dimenToRoundedPx(F)I
    .locals 4
    .param p0, "dimen"    # F

    .prologue
    .line 54
    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method


# virtual methods
.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 59
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/GridPagerAdapter;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Should use GridPagerAdapter if use GridViewPager!!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 63
    .local v1, "context":Landroid/content/Context;
    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->mColumn:I

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->mRow:I

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->mColumnSpace:I

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->mRowSpace:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIII)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/widget/GridViewPager;->setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V

    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 66
    return-void
.end method

.method public setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V
    .locals 2
    .param p1, "layoutManager"    # Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    .prologue
    .line 70
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should use GridLayoutManager if use GridViewPager!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V

    .line 75
    return-void
.end method
