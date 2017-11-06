.class public Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;
.super Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;
.source "GridLayoutManager.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$IPageProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mColumn:I

.field private mColumnSpace:I

.field private mItemHeight:I

.field private mItemWidth:I

.field private mPageHeight:I

.field private mPageWidth:I

.field mRow:I

.field private mRowSpace:I

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 38
    invoke-direct {p0, v0, v0, v1, v1}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->init(IIII)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "column"    # I
    .param p3, "row"    # I
    .param p4, "columnSpace"    # I
    .param p5, "rowSpace"    # I

    .prologue
    .line 30
    mul-int v0, p2, p3

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 32
    invoke-direct {p0, p3, p2, p4, p5}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->init(IIII)V

    .line 33
    return-void
.end method

.method private autoItemMeasurement(Landroid/view/ViewGroup;)V
    .locals 8
    .param p1, "pageContainer"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x1

    .line 73
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageWidth:I

    .line 74
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageHeight:I

    .line 76
    sget-object v4, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "autoItemMeasurement : measured width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageWidth:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageWidth:I

    invoke-static {}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 80
    .local v2, "viewParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageWidth:I

    .line 83
    .end local v2    # "viewParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageHeight:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageHeight:I

    invoke-static {}, Lcom/samsung/android/app/music/milk/store/HolderUtils;->getScreenSize()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v5, 0x2

    if-lt v4, v5, :cond_3

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 85
    .restart local v2    # "viewParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageHeight:I

    .line 88
    .end local v2    # "viewParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    const/4 v3, 0x0

    .line 89
    .local v3, "widthSpace":I
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mColumn:I

    if-le v4, v7, :cond_4

    .line 90
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mColumn:I

    add-int/lit8 v1, v4, -0x1

    .line 91
    .local v1, "spaceCount":I
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mColumnSpace:I

    mul-int v3, v1, v4

    .line 94
    .end local v1    # "spaceCount":I
    :cond_4
    const/4 v0, 0x0

    .line 95
    .local v0, "rowSpace":I
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRow:I

    if-le v4, v7, :cond_5

    .line 96
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRow:I

    add-int/lit8 v1, v4, -0x1

    .line 97
    .restart local v1    # "spaceCount":I
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRowSpace:I

    mul-int v0, v1, v4

    .line 99
    .end local v1    # "spaceCount":I
    :cond_5
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageWidth:I

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mColumn:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mItemWidth:I

    .line 100
    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageHeight:I

    sub-int/2addr v4, v0

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRow:I

    div-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mItemHeight:I

    .line 101
    return-void
.end method

.method private init(IIII)V
    .locals 1
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "columnSpace"    # I
    .param p4, "rowSpace"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mItemHeight:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mItemWidth:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageHeight:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageWidth:I

    .line 44
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRow:I

    .line 45
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mColumn:I

    .line 46
    iput p3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mColumnSpace:I

    .line 47
    iput p4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRowSpace:I

    .line 48
    return-void
.end method

.method private setItemSpace(IIIILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .param p1, "orientation"    # I
    .param p2, "position"    # I
    .param p3, "count"    # I
    .param p4, "space"    # I
    .param p5, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v4, 0x1

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "margin0":I
    const/4 v1, 0x0

    .line 143
    .local v1, "margin1":I
    const/4 v2, 0x0

    .line 144
    .local v2, "relativePosition":I
    if-nez p1, :cond_0

    .line 145
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRow:I

    div-int v2, p2, v3

    .line 152
    :goto_0
    if-nez v2, :cond_2

    .line 153
    const/4 v0, 0x0

    .line 154
    div-int/lit8 v1, p4, 0x2

    .line 163
    :goto_1
    if-nez p1, :cond_4

    move-object v3, p5

    .line 164
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 165
    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p5    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 173
    :goto_2
    return-void

    .line 146
    .restart local p5    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-ne p1, v4, :cond_1

    .line 147
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRow:I

    rem-int v2, p2, v3

    goto :goto_0

    .line 149
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Wrong usage!!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 155
    :cond_2
    add-int/lit8 v3, p3, -0x1

    if-ne v2, v3, :cond_3

    .line 156
    div-int/lit8 v0, p4, 0x2

    .line 157
    const/4 v1, 0x0

    goto :goto_1

    .line 159
    :cond_3
    div-int/lit8 v0, p4, 0x2

    .line 160
    div-int/lit8 v1, p4, 0x2

    goto :goto_1

    .line 166
    :cond_4
    if-ne p1, v4, :cond_5

    move-object v3, p5

    .line 167
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 168
    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p5    # "params":Landroid/view/ViewGroup$LayoutParams;
    iput v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_2

    .line 170
    .restart local p5    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Wrong usage!!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getRealPage(Landroid/view/ViewGroup;II)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "pageContainer"    # Landroid/view/ViewGroup;
    .param p2, "pageIndex"    # I
    .param p3, "pageType"    # I

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/GridLayout;

    invoke-direct {v1, v0}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .local v1, "gridLayout":Landroid/widget/GridLayout;
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mColumn:I

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 56
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRow:I

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 57
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setOrientation(I)V

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setUseDefaultMargins(Z)V

    .line 60
    return-object v1
.end method

.method public layoutItem(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 3
    .param p1, "itemContainer"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    .line 105
    instance-of v1, p1, Landroid/widget/GridLayout;

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown layout type !!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mItemWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mItemHeight:I

    if-gtz v1, :cond_2

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 114
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mItemWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 115
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mItemHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 117
    invoke-virtual {p0, p3, v0}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->setItemSpace(ILandroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public layoutPage(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
    .locals 1
    .param p1, "pageContainer"    # Landroid/view/ViewGroup;
    .param p2, "page"    # Landroid/view/ViewGroup;
    .param p3, "pageType"    # I

    .prologue
    .line 65
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mPageWidth:I

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->autoItemMeasurement(Landroid/view/ViewGroup;)V

    .line 69
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public lazyLoadAfterGlobalLayout()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public setItemSpace(ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 127
    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mColumnSpace:I

    if-eqz v0, :cond_2

    .line 132
    const/4 v1, 0x0

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mColumn:I

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mColumnSpace:I

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->setItemSpace(IIIILandroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRowSpace:I

    if-eqz v0, :cond_0

    .line 136
    const/4 v1, 0x1

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRow:I

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->mRowSpace:I

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/GridLayoutManager;->setItemSpace(IIIILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
